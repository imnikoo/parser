using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Data;
using System.Windows.Documents;
using System.Windows.Input;
using System.Windows.Media;
using System.Windows.Media.Imaging;
using System.Windows.Navigation;
using System.Windows.Shapes;
using RemoteNotes.UI.ViewModel;

namespace RemoteNotes.UI.Control
{
    /// <summary>
    /// Interaction logic for DashboardControl.xaml
    /// </summary>
    public partial class DashboardControl : UserControl
    {
        public DashboardViewModel DashboardViewModel
        {
            get { return (DashboardViewModel)GetValue(DashboardViewModelProperty); }
            set { SetValue(DashboardViewModelProperty, value); }
        }

        // Using a DependencyProperty as the backing store for DashboardViewModel.  This enables animation, styling, binding, etc...
        public static readonly DependencyProperty DashboardViewModelProperty =
            DependencyProperty.Register("DashboardViewModel", typeof(DashboardViewModel), typeof(DashboardControl), new UIPropertyMetadata(null));


        public DashboardControl(DashboardViewModel dashboardViewModel)
        {
            InitializeComponent();
            this.DashboardViewModel = dashboardViewModel;
            this.DataContext = this.DashboardViewModel;
        }
    }
}
