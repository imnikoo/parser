using System;
using System.Threading;
using System.Threading.Tasks;
using Microsoft.AspNetCore.SignalR.Client;
using Newtonsoft.Json;
using RemoteNotes.Service.Client.Settings;
using RemoteNotes.Service.DTO.Base;
using RemoteNotes.Service.DTO.Data;
using RemoteNotes.Service.DTO.Enum;

namespace RemoteNotes.Service.Client.Controller
{
    public class SystemEnterController
    {
        private CancellationTokenSource cts;
        private ServiceEnvironment serviceEnvironment;

        public SystemEnterController(ServiceEnvironment serviceEnvironment)
        {
            this.serviceEnvironment = serviceEnvironment;
        }

        /// <summary>
        /// The system enter.
        /// </summary>
        /// <param name="login">
        /// The login.
        /// </param>
        /// <param name="password">
        /// The password.
        /// </param>
        /// <returns>
        /// The <see cref="UserInfo"/>.
        /// </returns>
        public UserInfo SystemEnter(string login, string password)
        {
            Task<UserInfo> task = this.SystemEnterAsync(login, password);
            task.Wait();
            UserInfo userInfo = task.Result;

            return userInfo;
        }

        /// <summary>
        /// The system exit.
        /// </summary>
        /// <returns>
        /// The <see cref="string"/>.
        /// </returns>
        public OperationStatusInfo SystemExit()
        {
            Task<OperationStatusInfo> task = this.SystemExitAsync();
            task.Wait();
            OperationStatusInfo operationStatusInfo = task.Result;

            return operationStatusInfo;
        }

        public async Task<UserInfo> SystemEnterAsync(string login, string password)
        {
            try
            {
                this.cts = new CancellationTokenSource(this.serviceEnvironment.OperationTimeout);

                OperationStatusInfo operationStatusInfo =
                    await this.serviceEnvironment.Connection.InvokeCoreAsync<OperationStatusInfo>(
                        "enter",
                        new object[] {login, password},
                        this.cts.Token);

                if (operationStatusInfo.OperationStatus == OperationStatus.Done)
                {
                    string attachedObjectText = operationStatusInfo.AttachedObject.ToString();
                    UserInfo userInfo = JsonConvert.DeserializeObject<UserInfo>(attachedObjectText);

                    return userInfo;
                }
                else
                {
                    throw new Exception(operationStatusInfo.AttachedInfo);
                }
            }
            catch (Exception ex)
            {
                throw new Exception($"Enter operation cannot be performed. {ex.Message}", ex);
            }
        }

        public async Task<OperationStatusInfo> SystemExitAsync()
        {
            try
            {
                this.cts = new CancellationTokenSource(this.serviceEnvironment.OperationTimeout);
                
                OperationStatusInfo operationStatusInfo = await this.serviceEnvironment.Connection.InvokeAsync<OperationStatusInfo>("exit", this.cts.Token);

                if (operationStatusInfo.OperationStatus == OperationStatus.Done)
                {
                    return operationStatusInfo;
                }
                else
                {
                    throw new Exception(operationStatusInfo.AttachedInfo);
                }
            }
            catch (Exception ex)
            {
                throw new Exception($"Exit operation cannot be performed. {ex.Message}", ex);
            }
        }
    }
}
