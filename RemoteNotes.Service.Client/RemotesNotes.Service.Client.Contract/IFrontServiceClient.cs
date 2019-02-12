using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using RemoteNotes.Service.DTO.Base;
using RemoteNotes.Service.DTO.Data;

namespace RemotesNotes.Service.Client.Contract
{
    public interface IFrontServiceClient
    {
        void Connect(string address);
        Task ConnectAsync(string address);

        void Disconnect();

        /// <summary>
        /// Allows the user to enter the system. Returns minimal user data object.
        /// </summary>
        /// <param name="login"></param>
        /// <param name="password"></param>
        /// <returns></returns>
        UserInfo Enter(string login, string password);

        OperationStatusInfo Exit();

        Task<OperationStatusInfo> ExitAsync();

        Task<UserInfo> EnterAsync(string login, string password);
    }
}
