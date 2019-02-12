using System;
using System.Threading.Tasks;
using log4net.Repository.Hierarchy;
using RemoteNotes.Service.DTO.Base;
using RemoteNotes.Service.DTO.Data;
using RemoteNotes.Service.DTO.Enum;

namespace RemoteNotes.Service.Core.Hub
{
    public partial class CustomerHub
    {
        /// <summary>
        /// The enter.
        /// </summary>
        /// <param name="login">
        /// The login.
        /// </param>
        /// <param name="password">
        /// The password.
        /// </param>
        /// <returns>
        /// The <see cref="Task"/>.
        /// </returns>
        public virtual async Task<OperationStatusInfo> Enter(string login, string password)
        {
            var connectionId = this.Context.ConnectionId;

            return await Task.Run(
                async () =>
                {
                    string clientIp = this.GetIpAddress();
                    OperationStatusInfo operationStatusInfo = new OperationStatusInfo(operationStatus: OperationStatus.Done);

                    try
                    {
                        log.DebugFormat("Enter. IP:{0} Login:{1} ConnectionId:{2}", clientIp, login, connectionId);

                        UserInfo userInfo  = await this.hubEnvironment.userController.GetUserInfoAsync(login);
   
                        operationStatusInfo.AttachedObject = userInfo;
                        this.AddConnection(connectionId);
                        this.JoinGroup("shouldBeNotified");
                        return operationStatusInfo;
                    }
                    catch (Exception ex)
                    {
                        this.log.Error(ex);
                        operationStatusInfo.OperationStatus = OperationStatus.Cancelled;
                        operationStatusInfo.AttachedInfo = "User is not defined. Check your login and password.";
                    }

                    return operationStatusInfo;
                });
        }

        /// <summary>
        /// The exit.
        /// </summary>
        /// <returns>
        /// The <see cref="Task"/>.
        /// </returns>
        public async Task<OperationStatusInfo> Exit()
        {
            var connectionId = this.Context.ConnectionId;

            return await Task.Run(
                () =>
                {
                    OperationStatusInfo operationStatusInfo = new OperationStatusInfo(OperationStatus.Done);
                    string clientIp = this.GetIpAddress();

                    try
                    {
                        if (this.IsUserEntered)
                        {
                            log.DebugFormat("Exit. IP:{0} ConnectionId:{1}", clientIp, connectionId);
                            operationStatusInfo.OperationStatus = OperationStatus.Done;
                            this.RemoveConnection(connectionId);
                            this.LeaveGroup("shouldBeNotified");
                        }
                        else
                        {
                            operationStatusInfo.OperationStatus = OperationStatus.Cancelled;
                            operationStatusInfo.AttachedInfo = "User is not entered";
                        }
                    }
                    catch (Exception ex)
                    {
                        this.log.Error(ex);
                        operationStatusInfo.OperationStatus = OperationStatus.Cancelled;
                        operationStatusInfo.AttachedInfo = ex.Message;
                    }

                    return operationStatusInfo;
                });
        }
    }
}
