using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace RemoteNotes.Service.DTO.Data
{
    public class UserInfo
    {
        private string login;

        public string Login
        {
            get { return login; }

            set { this.login = value; }
        }

        public UserInfo(string login)
        {
            this.login = login;
        }
    }
}
