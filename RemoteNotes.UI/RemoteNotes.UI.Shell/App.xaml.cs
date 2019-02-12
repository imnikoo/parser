using System;
using System.Configuration;
using System.Windows;
using RemoteNotes.Core.Rule;
using RemoteNotes.Core.Rule.Contract;
using RemoteNotes.Service.Client.Stub;
using RemoteNotes.UI.Contract;
using RemoteNotes.UI.Control;
using RemoteNotes.UI.ViewModel;
using RemotesNotes.Service.Client.Contract;

namespace RemoteNotes.UI.Shell
{
    /// <summary>
    /// Interaction logic for App.xaml
    /// </summary>
    public partial class App : Application, IApplication
    {
        private void AppStartUp(object sender, StartupEventArgs args)
        {
            try
            {
                IMainWindowController mainWindowController = new MainWindowController(this);

                // Root of assembly
                // IFrontServiceClient frontServiceClient = new RemoteNotes.Service.Client.Stub.FrontServiceClient();
                IFrontServiceClient frontServiceClient = new RemoteNotes.Service.Client.FrontServiceClient();


                string serviceUrl = ConfigurationManager.AppSettings["ServiceUrl"];
                IValidationRuleFactory validationRuleFactory = new ValidationRuleFactory();
                IViewModelFactory viewModelFactory = new ViewModelFactory(mainWindowController, frontServiceClient, validationRuleFactory, serviceUrl);
                IControlFactory controlFactory = new ControlFactory(viewModelFactory);
                mainWindowController.RegisterControls(controlFactory);

                mainWindowController.LoadLogin();
            }
            catch (Exception ex)
            {
                throw;
            }
        }

        private void AppExit(object sender, ExitEventArgs args)
        {
            this.Shutdown();
        }

        void IApplication.Exit()
        {
            this.Shutdown();
        }
    }
}
