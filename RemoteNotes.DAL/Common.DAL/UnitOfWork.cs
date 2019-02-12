using System;
using System.Collections.Generic;
using Common.DAL.Contract;

namespace Common.DAL
{
    public class UnitOfWork : IUnitOfWork
    {
        private IDatabaseContext databaseContext;

        private Dictionary<Type, object> repositoryCollection = new Dictionary<Type, object>();

        public UnitOfWork(IDatabaseContext databaseContext, Dictionary<Type, object> repositoryCollection)
        {
            this.databaseContext = databaseContext;
            this.repositoryCollection = repositoryCollection;
        }

        public void Commit()
        {
            this.databaseContext.SaveChanges();
        }

        public void Rollback()
        {
            this.databaseContext.RejectChanges();
        }

        public T GetRepository<T>()
        {
            Type type = typeof(T);
            return (T)this.repositoryCollection[type];
        }

        public void Dispose()
        {
            this.databaseContext.Dispose();
        }
    }
}
