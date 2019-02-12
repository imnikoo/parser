using System;
using System.Collections.Generic;
using log4net;
using RemoteNotes.Service.Core.Controller;

namespace RemoteNotes.Service.Core.Hub
{
    using Microsoft.AspNetCore.SignalR;
    using System.Threading.Tasks;

        public partial class CustomerHub : Hub
        {
            /// <summary>
            /// The connection collection. Stores the active connections.
            /// </summary>
            protected readonly static List<string> connectionCollection = new List<string>();

            /// <summary>
            /// The locker.
            /// </summary>
            protected static readonly object locker = new object();

            private readonly ILog log ;

            private HubEnvironment hubEnvironment;

            public CustomerHub(ILog log, HubEnvironment hubEnvironment)
            {
                this.log = log;
                this.hubEnvironment = hubEnvironment;
            }

            /// <summary>
            /// Gets or sets a value indicating whether is user entered.
            /// </summary>
            protected virtual bool IsUserEntered
            {
                get
                {
                    return connectionCollection.Contains(this.Context.ConnectionId);
                }
            }

            /// <summary>
            /// The add connection.
            /// </summary>
            /// <param name="connectionId">
            /// The connection id.
            /// </param>
            protected void AddConnection(string connectionId)
            {
                lock (locker)
                {
                    if (!connectionCollection.Contains(connectionId))
                    {
                        connectionCollection.Add(connectionId);
                    }
                }
            }

            /// <summary>
            /// The remove connection.
            /// </summary>
            /// <param name="connectionId">
            /// The connection id.
            /// </param>
            protected void RemoveConnection(string connectionId)
            {
                lock (locker)
                {
                    if (connectionCollection.Contains(connectionId))
                    {
                        connectionCollection.Remove(connectionId);
                    }
                }
            }

            /// <summary>
            /// The join group.
            /// </summary>
            /// <param name="groupName">
            /// The group.
            /// </param>
            protected void JoinGroup(string groupName)
            {
                this.Groups.AddToGroupAsync(this.Context.ConnectionId, groupName);
            }

            /// <summary>
            /// The leave group.
            /// </summary>
            /// <param name="groupName">
            /// The group name.
            /// </param>
            protected void LeaveGroup(string groupName)
            {
                this.Groups.RemoveFromGroupAsync(this.Context.ConnectionId, groupName);
            }



            public async Task Send(string message)
            {
                Console.Write(message);
                await this.Clients.All.SendAsync("Notify", message);
            }

            protected string GetIpAddress()
            {
                var ipAddress = Context.GetHttpContext().Connection.RemoteIpAddress.ToString();

                return ipAddress;
            }
        }
    
}
