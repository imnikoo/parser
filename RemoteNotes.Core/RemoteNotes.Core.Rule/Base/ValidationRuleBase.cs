using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace RemoteNotes.Core.Rule.Base
{
    public abstract class ValidationRuleBase
    {
        protected string ruleDescription;

        public ValidationRuleBase(string ruleDescription)
        {
            this.ruleDescription = ruleDescription;
        }
        protected virtual string GetErrorMessage()
        {
            string errorMessage = "" + this.ruleDescription + "";

            return errorMessage;
        }
    }
}
