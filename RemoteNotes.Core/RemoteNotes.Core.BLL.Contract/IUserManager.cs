using System;
using RemoteNotes.Core.Domain;

namespace RemoteNotes.Core.BLL.Contract
{
    public interface IUserManager
    {
        User GetUserByLogin(string login);
    }
}
