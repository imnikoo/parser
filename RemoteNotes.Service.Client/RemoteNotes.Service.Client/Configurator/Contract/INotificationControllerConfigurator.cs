using Microsoft.AspNetCore.SignalR.Client;

namespace RemoteNotes.Service.Client.Configurator.Contract
{
    public interface INotificationControllerConfigurator
    {
        void Configure(HubConnection hubConnection);
    }
}
