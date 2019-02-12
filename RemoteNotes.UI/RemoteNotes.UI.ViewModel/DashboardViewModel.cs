using System;
using System.Collections.Generic;
using System.Linq;
using System.Net.Mime;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Input;
using Common.UI.Utility.Commands;
using RemoteNotes.Service.DTO.Base;
using RemoteNotes.UI.Contract;
using RemotesNotes.Service.Client.Contract;

namespace RemoteNotes.UI.ViewModel
{
    public class DashboardViewModel : ViewModelBase
    {
        private IMainWindowController mainWindowController;
        private IFrontServiceClient frontServiceClient;

        public DashboardViewModel(IMainWindowController mainWindowController, IFrontServiceClient frontServiceClient)
        {
            this.mainWindowController = mainWindowController;
            this.frontServiceClient = frontServiceClient;
        }

        #region logOutCommand
        private RelayCommand logOutCommand;
        public ICommand LogOutCommand
        {
            get
            {
                if (this.logOutCommand == null)
                {
                    this.logOutCommand = new RelayCommandAsync(() => this.LogOut());
                }

                return logOutCommand;
            }
        }

        private async Task LogOut()
        {
            OperationStatusInfo operationStatusInfo = await this.frontServiceClient.ExitAsync();
            this.mainWindowController.LoadLogin();
        }
        #endregion

        #region logOutCommand
        private RelayCommand exitCommand;
        public ICommand ExitCommand
        {
            get
            {
                if (this.exitCommand == null)
                {
                    this.exitCommand = new RelayCommand(() => this.Exit());
                }

                return exitCommand;
            }
        }

        private async Task Exit()
        {
             this.mainWindowController.Exit();
        }

        #endregion

        protected override string GetValidationError(string property)
        {
            return string.Empty;
        }
    }
}
