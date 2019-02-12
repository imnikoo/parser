using System;
using System.Threading.Tasks;
using RemoteNotes.Service.Client.Configurator;
using RemoteNotes.Service.Client.Configurator.Contract;
using RemoteNotes.Service.Client.Controller;
using RemoteNotes.Service.Client.Settings;
using RemoteNotes.Service.DTO.Base;
using RemoteNotes.Service.DTO.Data;
using RemotesNotes.Service.Client.Contract;

namespace RemoteNotes.Service.Client
{
    public class FrontServiceClient : IFrontServiceClient
    {
        private ServiceEnvironment serviceEnvironment;

        private SystemConnectionController systemConnectionController;

        private SystemEnterController systemEnterController;

        public FrontServiceClient()
        {
            this.ConfigureServiceSettings();
            INotificationControllerConfigurator notificationControllerConfigurator = (new NotificationControllerConfiguratorFactory()).Create();
            this.ConfigureOperationControllers(serviceEnvironment, notificationControllerConfigurator);
        }

        private void ConfigureServiceSettings()
        {
            this.serviceEnvironment = new ServiceEnvironment();
            this.serviceEnvironment.HubName = "notes";
            this.serviceEnvironment.ConnectionTimeout = new TimeSpan(0, 1, 0);
        }

        private void ConfigureOperationControllers(ServiceEnvironment serviceEnvironment, INotificationControllerConfigurator notificationConfigurator)
        {
            this.systemConnectionController = new SystemConnectionController(serviceEnvironment, notificationConfigurator);
            this.systemEnterController = new SystemEnterController(serviceEnvironment);

        }

        public async Task ConnectAsync(string address)
        {
            await this.systemConnectionController.ConnectAsync(address);
        }

        public void Connect(string address)
        {
            this.systemConnectionController.Connect(address);
        }

        public void Disconnect()
        {
           this.systemConnectionController.Disconnect();
        }

        public UserInfo Enter(string login, string password)
        {
            return this.systemEnterController.SystemEnter(login, password);
        }

        public OperationStatusInfo Exit()
        {
            return this.systemEnterController.SystemExit();
        }

        public async Task<OperationStatusInfo> ExitAsync()
        {
            return await this.systemEnterController.SystemExitAsync();
        }

        public async Task<UserInfo> EnterAsync(string login, string password)
        {
            return await this.systemEnterController.SystemEnterAsync(login, password);
        }
    }
}
