using Microsoft.EntityFrameworkCore;
using Scrapper.Domain;
using SearchEngine.Domain;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace SearchEngine.DAL
{
    public class IndexPageRepository 
    {
        private SearchEngineContext db;

        public IndexPageRepository()
        {
            this.db = new SearchEngineContext(new DbContextOptions<SearchEngineContext>());
        }

        public void Create(IndexPage item)
        {
            db.IndexPages.Add(item);
        }

        public void Delete(int id)
        {
            IndexPage ip = db.IndexPages.Find(id);
            if (ip != null)
                db.IndexPages.Remove(ip);
        }

        public IndexPage GetById(int id)
        {
            return db.IndexPages.Find(id);
        }

        public IQueryable<IndexPage> GetEntities()
        {
            return db.IndexPages.Include(x=> x.Index).Include(x => x.Page);
        }

        public void Save()
        {
            db.SaveChanges();
        }

        public void Update(IndexPage item)
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
