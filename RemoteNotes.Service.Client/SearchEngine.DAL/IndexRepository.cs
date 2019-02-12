using Microsoft.EntityFrameworkCore;
using Scrapper.Domain;
using SearchEngine.Domain;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace SearchEngine.DAL
{
    public class IndexRepository : IRepository<Index>
    {
        private SearchEngineContext db;

        public IndexRepository()
        {
            this.db = new SearchEngineContext(new DbContextOptions<SearchEngineContext>());
        }

        public void Create(Index item)
        {
            db.Indexes.Add(item);
        }

        public void Delete(int id)
        {
            Index index = db.Indexes.Find(id);
            if (index != null)
                db.Indexes.Remove(index);
        }

        public Index GetById(int id)
        {
            return db.Indexes.Find(id);
        }

        public IQueryable<Index> GetEntities()
        {
            return db.Indexes.Include(x=>x.IndexPages);
        }

        public void Save()
        {
            db.SaveChanges();
        }

        public void Update(Index item)
        {
            db.Entry(item).State = EntityState.Modified;
        }

        private bool disposed = false;

        public virtual void Dispose(bool disposing)
        {
            if (!this.disposed)
            {
                if (disposing)
                {
                    db.Dispose();
                }
            }
            this.disposed = true;
        }

        public void Dispose()
        {
            Dispose(true);
            GC.SuppressFinalize(this);
        }
    }
}
