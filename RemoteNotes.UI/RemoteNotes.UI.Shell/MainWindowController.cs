using System;
using System.Windows;
using System.Windows.Threading;
using RemoteNotes.UI.Contract;
using RemoteNotes.UI.Control;

namespace RemoteNotes.UI.Shell
{
    public class MainWindowController : IMainWindowController
    {
        private MainWindow mainWindow;

        private ControlManager controlManager;

        private IApplication application;

        private bool isLoggedIn = false;

        public MainWindowController(IApplication application)
        {
            this.application = application;
            this.mainWindow = new MainWindow();
            this.controlManager = new ControlManager();
        }

        public void RegisterControls(IControlFactory controlFactory)
        {
            this.controlManager.Register("MainWindow", this.mainWindow);
            this.controlManager.Register("LoginControl", controlFactory.Create<LoginControl>());
            this.controlManager.Register("DashboardControl", controlFactory.Create<DashboardControl>());
        }

        public void LoadLogin()
        {
            #region Main window definition

            this.mainWindow.Dispatcher.Invoke(DispatcherPriority.Normal,
                new Action(() =>
                {
                    mainWindow.WindowStyle = WindowStyle.None;
                    mainWindow.WindowState = WindowState.Normal;
                    this.mainWindow.WindowStartupLocation = WindowStartupLocation.CenterScreen;

                    if (!this.isLoggedIn)
                    {
                        this.mainWindow.Show();
                    }
                }));

            #endregion

            controlManager.Place("MainWindow", "MainRegion", "LoginControl");
        }

        public void Exit()
        {
            this.application.Exit();
        }

        //public async Task ExitAsync()
        //{
        //    this.mainWindow.Dispatcher.Invoke(DispatcherPriority.Normal,
        //        new Action(() => { this.application.Exit(); }));
        //}

        public void LoadDashboard()
        {
            // Configure Main window
            // Window mainWindow = this.controlManager.GetControl("MainWindow") as Window;
            this.mainWindow.Dispatcher.Invoke(DispatcherPriority.Normal,
                new Action(() => 
                {
                    mainWindow.WindowState = WindowState.Maximized;
                    //mainWindow.WindowStyle = WindowStyle.SingleBorderWindow;
                }));

            this.controlManager.Place("MainWindow", "MainRegion", "DashboardControl");
        }
    }
}
