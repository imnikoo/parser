using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Microsoft.AspNetCore.SignalR.Client;
using Microsoft.Extensions.Options;
using RemoteNotes.Service.Client.Configurator.Contract;

namespace RemoteNotes.Service.Client.Configurator
{
    public class NotificationControllerConfigurator : INotificationControllerConfigurator

    {
        public NotificationControllerConfigurator()
        {
            
        }

        public void Configure(HubConnection hubConnection)
        {
            hubConnection.On<string>("Notify", (message) =>
            {
                System.Console.Write($"Received notification: {message}\r\n");
            });
        }

    }
}
