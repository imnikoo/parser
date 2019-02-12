using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using RemoteNotes.Core.Rule.Base;
using RemoteNotes.Core.Rule.Contract.Base;
using RemoteNotes.Core.Rule.Extensions;

namespace RemoteNotes.Core.Rule.Validation.Basic
{
    public class PasswordValidationRule : ValidationRuleBase
    {
        public PasswordValidationRule() : base("Password must be a string composed of: letters, digits, _")
        {
        }

        public ValidationResult IsValid(string password)
        {
            ValidationResult validationResult = new ValidationResult();

            if (password == null || !password.IsStringWithNumbersAndUnderscores())
            {
                string errorMessage = this.GetErrorMessage();
                validationResult = new ValidationResult(false, errorMessage);
            }

            return validationResult;
        }
    }
}
