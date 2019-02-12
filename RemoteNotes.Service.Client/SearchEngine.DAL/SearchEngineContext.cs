using Microsoft.EntityFrameworkCore;
using SearchEngine.Domain;
using System;
using System.Collections.Generic;
using System.Text;

namespace Scrapper.Domain
{
    public class SearchEngineContext : DbContext
    {
        public DbSet<Page> Pages{ get; set; }
        public DbSet<Index> Indexes { get; set; }
        public DbSet<IndexPage> IndexPages { get; set; }

        public SearchEngineContext(DbContextOptions<SearchEngineContext> options) : base(options)
        {
            Database.EnsureCreated();
        }

        protected override void OnConfiguring(DbContextOptionsBuilder optionsBuilder)
        {
            optionsBuilder.UseSqlServer("Server=(localdb)\\mssqllocaldb;Database=helloappdb;Trusted_Connection=True;");
        }

        protected override void OnModelCreating(ModelBuilder modelBuilder)
        {
            modelBuilder.Entity<IndexPage>().HasKey(ip => new { ip.IndexId, ip.PageId });

            base.OnModelCreating(modelBuilder);
        }
    }
}
