using System;
using System.Threading.Tasks;
using RemoteNotes.Service.DTO.Base;
using RemoteNotes.Service.DTO.Data;
using RemoteNotes.Service.DTO.Enum;
using RemotesNotes.Service.Client.Contract;

namespace RemoteNotes.Service.Client.Stub
{
    public class FrontServiceClient : IFrontServiceClient
    {
            public UserInfo Enter(string login, string password)
            {
                if (login.Equals("login") && password.Equals("password"))
                {
                    return new UserInfo("login");
                }
                else
                {
                    throw new Exception($"User '{login}' is not found.");
                }
            }

        public OperationStatusInfo Exit()
        {
            return new OperationStatusInfo(OperationStatus.Done);
        }

        public Task<OperationStatusInfo> ExitAsync()
        {
            return Task.Run(() => this.Exit());
        }

        public Task<UserInfo> EnterAsync(string login, string password)
        {
            return Task.Run(() => this.Enter(login, password));
        }

        public void Connect(string address)
        {
               
        }

        public Task ConnectAsync(string address)
        {
            return Task.Run(() => this.Connect(address));
        }

        public void Disconnect()
        {
                
        }
    }

}
