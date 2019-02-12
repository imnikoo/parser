using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace RemoteNotes.Core.Domain.Enum
{
    public interface ITraceable
    {
        string GetTrace();
    }
}
