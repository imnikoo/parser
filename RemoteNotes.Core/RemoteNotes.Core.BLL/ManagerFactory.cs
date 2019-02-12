using System;
using System.Collections.Generic;
using System.Text;
using Common.DAL.Contract;
using RemoteNotes.Core.BLL.Contract;
using RemoteNotes.DAL.Contract;

namespace RemoteNotes.Core.BLL
{
    public class ManagerFactory : IManagerFactory
    {
        readonly Dictionary<Type, object> collection = new Dictionary<Type, object>();
        private IUnitOfWorkFactory unitOfWorkFactory;

        public ManagerFactory(IUnitOfWorkFactory unitOfWorkFactory)
        {
            this.unitOfWorkFactory = unitOfWorkFactory;
            IUnitOfWork unitOfWork = unitOfWorkFactory.CreateUnitOfWork();
            // Extension point of the factory
            this.collection.Add(typeof(IUserManager), new UserManager(unitOfWork.GetRepository<IUserRepository>()));
        }

        public T Create<T>()
        {
            Type type = typeof(T);

            if (!this.collection.ContainsKey(type))
            {
                throw new MissingMemberException(type.ToString() + "is missing in the collection");
            }

            return (T)this.collection[type];
        }
    }
}
