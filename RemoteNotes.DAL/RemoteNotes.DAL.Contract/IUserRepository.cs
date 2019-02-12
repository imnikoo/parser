using Common.DAL.Contract;
using RemoteNotes.Core.Domain;


namespace RemoteNotes.DAL.Contract
{
    public interface IUserRepository: IRepository<User>
    {
        User GetUserByLogin(string login);
    }
}
