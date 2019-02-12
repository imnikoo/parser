using System;
using System.Collections.Generic;
using Common.DAL.Contract;
using RemoteNotes.DAL.Contract;

namespace RemoteNotes.DAL.MySql
{
    public class RepositoryFactory 
    {
        private ISqlDataManager sqlDataManager;

        private Dictionary<Type, object> repositoryCollection = new Dictionary<Type, object>();

        public RepositoryFactory(ISqlDataManager sqlDataManager)
        {
            this.sqlDataManager = sqlDataManager;

            this.ConfigureRepositoryCollection();
        }

        protected void ConfigureRepositoryCollection()
        {
            // Extension point
            this.repositoryCollection.Add(typeof(IUserRepository), new UserRepository(this.sqlDataManager));
        }

        public Dictionary<Type, object> GetRepositoryCollection()
        {
            return repositoryCollection;
        }
    }
}
