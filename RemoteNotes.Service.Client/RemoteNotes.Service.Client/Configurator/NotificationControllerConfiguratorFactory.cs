using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using RemoteNotes.Service.Client.Configurator.Contract;

namespace RemoteNotes.Service.Client.Configurator
{
    public class NotificationControllerConfiguratorFactory
    {
        public INotificationControllerConfigurator Create()
        {
            return new NotificationControllerConfigurator();
        }
    }
}
