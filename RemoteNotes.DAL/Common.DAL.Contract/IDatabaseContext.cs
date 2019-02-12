using System;

namespace Common.DAL.Contract
{
    public interface IDatabaseContext : IDisposable
    {
        void SaveChanges();

        void RejectChanges();
    }
}
