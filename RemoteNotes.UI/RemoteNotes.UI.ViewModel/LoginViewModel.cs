using System;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Input;
using Common.UI.Utility.Commands;
using RemoteNotes.Core.Rule.Contract;
using RemoteNotes.Service.DTO.Data;
using RemoteNotes.UI.Contract;
using RemotesNotes.Service.Client.Contract;

namespace RemoteNotes.UI.ViewModel
{
    public class LoginViewModel : ViewModelBase
    {
        public string Password
        {
            get { return (string)this.GetUIValue(PasswordProperty); }
            set { this.SetUIValue(PasswordProperty, value); }
        }

        public static readonly DependencyProperty PasswordProperty =
            DependencyProperty.Register("Password", typeof(string), typeof(LoginViewModel), null);

        public string Login
        {
            get { return (string)this.GetUIValue(LoginProperty); }
            set { this.SetUIValue(LoginProperty, value); }
        }

        public static readonly DependencyProperty LoginProperty =
            DependencyProperty.Register("Login", typeof(string), typeof(LoginViewModel), new PropertyMetadata(null));


        private IEnterOperationValidationRule enterOperationValidationRule;

        private IMainWindowController mainWindowController;

        private IFrontServiceClient frontServiceClient;

        private string serviceUrl;

        public LoginViewModel(
            IMainWindowController mainWindowController,
            IFrontServiceClient frontServiceClient,
            IEnterOperationValidationRule enterOperationValidationRule, 
            string serviceUrl)
        {
            this.mainWindowController = mainWindowController;
            this.frontServiceClient = frontServiceClient;
            
            this.validatablePropertyCollection.Add("Login");
            this.validatablePropertyCollection.Add("Password");

            this.enterOperationValidationRule = enterOperationValidationRule;

            this.serviceUrl = serviceUrl;
        }

        #region LoginCommand

        private RelayCommand enterCommand;

        private RelayCommand exitCommand;

        public ICommand EnterCommand
        {
            get
            {
                //if (enterCommand == null) enterCommand = new RelayCommandAsync(() => this.Connect());
                //return enterCommand;
                if (this.enterCommand == null)
                {
                    this.enterCommand = new RelayCommandAsync(() => this.EnterAsync(), () => this.CanEnter);
                }

                return this.enterCommand;
            }
        }
        
        public ICommand ExitCommand
        {
            get
            {
                if (this.exitCommand == null)
                {

                    this.enterCommand = new RelayCommand(() => this.Exit(), null);
                }

                return this.enterCommand;
            }
        }

        private bool CanEnter
        {
            get
            {
                return this.IsValid;
            }
        }

        private bool isConnected = false;
        private async Task EnterAsync()
        {
            try
            {
                this.view.ClearError();

                string login = this.Login;
                string password = this.Password;

                if (!isConnected)
                {
                    await this.frontServiceClient.ConnectAsync(this.serviceUrl);
                    isConnected = true;
                }

                UserInfo userInfo = await this.frontServiceClient.EnterAsync(login, password);
                this.mainWindowController.LoadDashboard();
            }
            catch (Exception ex)
            {
                this.view.ShowError(ex.Message);
                this.view.SetFocus();
            }
        }

        private void Enter()
        {
            try
            {
                this.view.ClearError();

                string login = this.Login;
                string password = this.Password;

                if (!isConnected)
                {
                    
                    Task<bool> connectTask = Task.Run(async () =>
                    {
                        await this.frontServiceClient.ConnectAsync(this.serviceUrl);
                        return true;
                    });

                    isConnected = connectTask.Result;
                }

                // Enter the system
                Task<UserInfo> enterTask = Task.Run(async () =>
                {
                    return await this.frontServiceClient.EnterAsync(login, password);
                });

                UserInfo userInfo = enterTask.Result;
                this.mainWindowController.LoadDashboard();
            }
            catch (Exception ex)
            {
                this.view.ShowError(ex.Message);
                this.view.SetFocus();
            }
        }

        private void Exit()
        {
            try
            {
                this.view.ClearError();
                this.mainWindowController.Exit();
            }
            catch (Exception ex)
            {
                this.view.ShowError(ex.Message);
                this.view.SetFocus();
            }
        }

        #endregion

        #region Validation

        /// <summary>
        /// The get validation error.
        /// </summary>
        /// <param name="property">
        /// The property.
        /// </param>
        /// <returns>
        /// The <see cref="string"/>.
        /// </returns>
        protected override string GetValidationError(string property)
        {
            string error = null;

            switch (property)
            {
                case "Login":
                    error = this.enterOperationValidationRule.ValidateLogin(this.Login).GetErrorMessage();
                    break;
                case "Password":
                    error = this.enterOperationValidationRule.ValidatePassword(this.Password).GetErrorMessage();
                    break;
                default:
                    break;
            }

            return error;
        }



        #endregion Validation

    }
}
