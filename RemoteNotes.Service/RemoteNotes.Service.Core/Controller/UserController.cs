using System.Threading.Tasks;
using Microsoft.AspNetCore.SignalR;
using RemoteNotes.Core.BLL.Contract;
using RemoteNotes.Core.Domain;
using RemoteNotes.Service.Core.Hub;
using RemoteNotes.Service.DTO.Data;
using RemoteNotes.Service.DTO.Transform.Core;

namespace RemoteNotes.Service.Core.Controller
{
    public class UserController
    {
        private IHubContext<CustomerHub> hubContext;
        private IUserManager userManager;
        private UserTransformer userTransformer;

        public UserController(IHubContext<CustomerHub> hubContext, IUserManager userManager)
        {
            this.hubContext = hubContext;
            this.userManager = userManager;
            this.userTransformer = new UserTransformer();
        }

        public Task WriteMessageAsync(string message)
        {
            return hubContext.Clients.All.SendAsync("Notify", message);
        }

        public async Task<UserInfo> GetUserInfoAsync(string login)
        {
            User user = this.userManager.GetUserByLogin(login);

            await this.WriteMessageAsync("User login operation works fine");

            return this.userTransformer.Transform(user);
        }
    }
}
