using System;
using System.Collections.Generic;
using System.Text;

namespace RemoteNotes.Core.BLL.Contract
{
    public interface IManagerFactory
    {
        T Create<T>();
    }
}
