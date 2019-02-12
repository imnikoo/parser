using SearchEngine.Domain;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace SearchEngine.DAL
{
    public interface IRepository<T> : IDisposable where T : Base
    {
        IQueryable<T> GetEntities();
        T GetById(int id);
        void Create(T item);
        void Update(T item);
        void Delete(int id);
        void Save();
    }
}
