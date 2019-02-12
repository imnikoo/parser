using System;
using System.Collections.Generic;
using System.Data;
using System.Text;
using Common.DAL.Contract;
using RemoteNotes.Core.Domain;
using RemoteNotes.DAL.Contract;

namespace RemoteNotes.DAL.MySql
{
    public class UserRepository : RepositoryBase<User>, IUserRepository
    {
        public UserRepository(ISqlDataManager sqlDataManager) : base(sqlDataManager)
        {
        }

        public User GetUserByLogin(string login)
        {
            try
            {
                string queryCommand = "GetUserByLogin";
                List<User> collection = this.sqlDataManager.DoQuery<User>(
                    queryCommand,
                    new Dictionary<string, object>() {{"Login", login}});

                if (collection.Count > 0)
                {
                    return collection[0];
                }
                else
                {
                    string message = $"The user with login: {login} is not found.";
                    throw new Exception(message);
                }
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }
        
        protected override void AddInputParameterCollection(IDbCommand sqlCommand, User user)
        {
            this.sqlDataManager.AddParameter(sqlCommand, "@Login", user.Login);
            this.sqlDataManager.AddParameter(sqlCommand, "@Password", user.Password);
        }
    }
}
