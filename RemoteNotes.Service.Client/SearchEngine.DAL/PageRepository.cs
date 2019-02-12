using Microsoft.EntityFrameworkCore;
using Scrapper.Domain;
using SearchEngine.Domain;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace SearchEngine.DAL
{
    public class PageRepository : IRepository<Page>
    {
        private SearchEngineContext db;

        public PageRepository()
        {
            this.db = new SearchEngineContext(new DbContextOptions<SearchEngineContext>());
        }

        public void Create(Page item)
        {
            db.Pages.Add(item);
        }

        public void Delete(int id)
        {
            Page page = db.Pages.Find(id);
            if (page != null)
                db.Pages.Remove(page);
        }

        public Page GetById(int id)
        {
            return db.Pages.Find(id);
        }

        public IQueryable<Page> GetEntities()
        {
            return db.Pages;
        }

        public void Save()
        {
            db.SaveChanges();
        }

        public void Update(Page item)
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
