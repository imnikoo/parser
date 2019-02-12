using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using RemoteNotes.Core.Rule.Contract;
using RemoteNotes.Core.Rule.Validation.Operation;

namespace RemoteNotes.Core.Rule
{
    public class ValidationRuleFactory : IValidationRuleFactory
    {
        readonly Dictionary<Type, object> ruleCollection = new Dictionary<Type, object>();

        public ValidationRuleFactory()
        {
            // Extension point of the factory
            this.ruleCollection.Add(typeof(IEnterOperationValidationRule), new EnterOperationValidationRule());
        }

        public T Create<T>()
        {
            Type type = typeof(T);

            if (!this.ruleCollection.ContainsKey(type))
            {
                throw new MissingMemberException(type.ToString() + "is missing in the rule collection");
            }

            return (T)this.ruleCollection[type];
        }
    }
}
