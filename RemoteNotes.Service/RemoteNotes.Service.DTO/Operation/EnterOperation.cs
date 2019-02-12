using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace RemoteNotes.Service.DTO.Operation
{
    public class EnterOperation
    {
        private string login;

        private string password;

        public string Login
        {
            get { return login; }
        }

        public string Password
        {
            get { return password; }
        }

        public EnterOperation(string login, string password)
        {
            this.login = login;
            this.password = password;
        }
    }
}
