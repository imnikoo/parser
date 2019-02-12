using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Controls;
using RemoteNotes.UI.Contract;
using RemoteNotes.UI.ViewModel;

namespace RemoteNotes.UI.Control
{
    public class ControlFactory : IControlFactory
    {
        readonly Dictionary<Type, object> controlCollection = new Dictionary<Type, object>();

        private IViewModelFactory viewModelFactory;

        public ControlFactory(IViewModelFactory viewModelFactory)
        {
            this.viewModelFactory = viewModelFactory;
            this.controlCollection.Add(typeof(LoginControl), new LoginControl(this.viewModelFactory.Create<LoginViewModel>()));
            this.controlCollection.Add(typeof(DashboardControl), new DashboardControl(this.viewModelFactory.Create<DashboardViewModel>()));
        }

        public T Create<T>() 
        {
            Type type = typeof(T);

            if (!this.controlCollection.ContainsKey(type))
            {
                throw new MissingMemberException(type.ToString() + " is missing in the control model collection");
            }

            return (T)this.controlCollection[type];
        }
    }
}
