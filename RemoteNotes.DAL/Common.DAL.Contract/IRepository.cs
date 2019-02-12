﻿using System.Collections.Generic;
using System.Threading.Tasks;

namespace Common.DAL.Contract
{
    public interface IRepository<T>
    {
        Task<T> GetByIdAsync(int id);

        T GetById(int id);

        void Delete(int id, bool commit = false);

        void Add(T element, bool commit = false);

        void Update(T element, bool commit = false);

        List<T> GetCollection();

        void Clear(bool commit = false);
    }
}
