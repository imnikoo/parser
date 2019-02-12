using System;
using System.Collections.Generic;
using System.Text;
using Microsoft.AspNetCore.SignalR;
using RemoteNotes.Core.BLL.Contract;
using RemoteNotes.Service.Core.Hub;

namespace RemoteNotes.Service.Core.Controller
{
    public class HubEnvironment
    {
        public UserController userController;

        public HubEnvironment(IHubContext<CustomerHub> hubContext, IManagerFactory managerFactory)
        {
            IUserManager userManager = managerFactory.Create<IUserManager>();
            this.userController = new UserController(hubContext, userManager);
        }
         
    }
}
