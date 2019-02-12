using System;
using Common.Domain;

namespace RemoteNotes.Core.Domain
{
    public class User : Identifiable
    {
        private int id;
        private string login;
        private string password;

        public int Id { get; set; }

        public string Login { get; set; }

        public string Password { get; set; }

    }
}
