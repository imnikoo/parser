using System;
using RemoteNotes.Core.BLL.Contract;
using RemoteNotes.Core.Domain;
using RemoteNotes.DAL.Contract;

namespace RemoteNotes.Core.BLL
{
    public class UserManager:IUserManager
    {
        private IUserRepository userRepository;

        public UserManager(IUserRepository userRepository)
        {
            this.userRepository = userRepository;
        }

        public User GetUserByLogin(string login)
        {
            return this.userRepository.GetUserByLogin(login);

            //if (login.Equals("login"))
            //{
            //    return new User(){Id = 1, Login = "login", Password = "password"};
            //}
            //else
            //{
            //    throw new Exception($"The user with the login {login} is not found");
            //}
        }
    }
}
