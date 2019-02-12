using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using RemoteNotes.Core.Rule.Contract;
using RemoteNotes.UI.Contract;
using RemotesNotes.Service.Client.Contract;

namespace RemoteNotes.UI.ViewModel
{
    public class ViewModelFactory : IViewModelFactory
    {
        readonly Dictionary<Type, object> viewModelCollection = new Dictionary<Type, object>();

        public ViewModelFactory(IMainWindowController mainWindowController, IFrontServiceClient frontServiceClient, IValidationRuleFactory validationRuleFactory, string serviceUrl)
        {
            this.viewModelCollection.Add(typeof(LoginViewModel), 
                new LoginViewModel(
                    mainWindowController, 
                    frontServiceClient, 
                    validationRuleFactory.Create<IEnterOperationValidationRule>(), serviceUrl));

            this.viewModelCollection.Add(typeof(DashboardViewModel), new DashboardViewModel(mainWindowController, frontServiceClient));
        }

        public T Create<T>()
        {
            Type type = typeof(T);

            if (!this.viewModelCollection.ContainsKey(type))
            {
                throw new MissingMemberException(type.ToString() + "is missing in the view model collection");
            }

            return (T)this.viewModelCollection[type];
        }
    }
}
