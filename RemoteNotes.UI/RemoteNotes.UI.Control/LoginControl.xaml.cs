using System;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Input;
using System.Windows.Threading;
using RemoteNotes.UI.Contract;
using RemoteNotes.UI.ViewModel;

namespace RemoteNotes.UI.Control
{
    /// <summary>
    /// Interaction logic for LoginControl.xaml
    /// </summary>
    public partial class LoginControl : UserControl, IView
    {
        public LoginViewModel LoginViewModel
        {
            get { return (LoginViewModel)this.GetValue(LoginViewModelProperty); }
            set { this.SetValue(LoginViewModelProperty, value); }
        }

        public static readonly DependencyProperty LoginViewModelProperty = DependencyProperty.Register("LoginViewModel", typeof(LoginViewModel),
            typeof(LoginControl), new UIPropertyMetadata(null));

        public LoginControl(LoginViewModel loginViewModel)
        {
            loginViewModel.View = this;
            InitializeComponent();
            this.LoginViewModel = loginViewModel;
            this.DataContext = this.LoginViewModel;
        }

        public void ShowError(string error)
        {
            this.Dispatcher.Invoke(DispatcherPriority.Normal,
                new Action(() => { this.txtError.Content = error; }));
        }

        public void SetFocus()
        {
            this.Dispatcher.Invoke(DispatcherPriority.Normal,
                new Action(() => { FocusManager.SetFocusedElement(this, this.txtLogin);}));
            
        }

        public void ClearError()
        {
            this.Dispatcher.Invoke(DispatcherPriority.Normal,
                new Action(() => { this.txtError.Content = "";}));
            
        }
    }
}
