using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace RemoteNotes.Core.Rule.Contract
{
    public interface IValidationRuleFactory
    {
        T Create<T>();
    }
}
