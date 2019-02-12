using System;
using System.Collections.Generic;
using Common.DAL;
using Common.DAL.Contract;

namespace RemoteNotes.DAL.MySql
{
    public class UnitOfWorkFactory : IUnitOfWorkFactory
    {
        private string connectionString;
        private bool ownConnection;

        public UnitOfWorkFactory(string connectionString, bool ownConnection)
        {
            this.connectionString = connectionString;
            this.ownConnection = ownConnection;
        }

        public IUnitOfWork CreateUnitOfWork()
        {
            DatabaseContext databaseContext = new DatabaseContext(connectionString, ownConnection);
            ISqlDataManager sqlDataManager = new SqlDataManager(databaseContext);

            RepositoryFactory repositoryFactory = new RepositoryFactory(sqlDataManager);
            Dictionary<Type, object> repositoryCollection = repositoryFactory.GetRepositoryCollection();

            IUnitOfWork unitOfWork = new UnitOfWork(databaseContext, repositoryCollection);

            return unitOfWork;
        }
    }
}
