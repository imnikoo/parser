using System;
using System.Threading;
using System.Threading.Tasks;
using Microsoft.AspNetCore.SignalR.Client;
using RemoteNotes.Service.Client.Configurator.Contract;
using RemoteNotes.Service.Client.Settings;

namespace RemoteNotes.Service.Client.Controller
{
    class SystemConnectionController
    {
        private HubConnection hubConnection;
        private ServiceEnvironment serviceEnvironment;
        private INotificationControllerConfigurator notificationConfigurator;
        private CancellationTokenSource cts;

        public SystemConnectionController(ServiceEnvironment serviceSettings, INotificationControllerConfigurator notificationConfigurator)
        {
            //Contract.Requires<ArgumentNullException>(serviceSettings != null, "input parameter cannot be null");
            //Contract.Requires<ArgumentNullException>(notificationConfigurator != null, "input parameter cannot be null");

            this.serviceEnvironment = serviceSettings;
            this.notificationConfigurator = notificationConfigurator;

        }

        public void Connect(string serviceUrl)
        {
            this.ConnectAsync(serviceUrl).Wait();
        }

        public async Task ConnectAsync(string serviceUrl)
        {
            try
            {
                string hubName = this.serviceEnvironment.HubName;
                string servicePathUrl = $"{serviceUrl}/{hubName}";

                this.hubConnection = new HubConnectionBuilder()
                    .WithUrl(servicePathUrl)
                    .Build();


                this.serviceEnvironment.Connection = hubConnection;

                hubConnection.Closed += this.HubConnectionOnClosed;
                this.notificationConfigurator.Configure(hubConnection);

                this.cts = new CancellationTokenSource(this.serviceEnvironment.ConnectionTimeout);

                await hubConnection.StartAsync(this.cts.Token);
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }

        private async Task HubConnectionOnClosed(Exception arg)
        {
            await this.hubConnection.StartAsync();
        }

        /// <summary>
        /// The disconnect.
        /// </summary>
        public async void Disconnect()
        {
            if (this.hubConnection != null)
            {
                if (this.hubConnection.State != HubConnectionState.Disconnected)
                {
                    await this.hubConnection.StopAsync();
                }
            }
        }
    }
}
