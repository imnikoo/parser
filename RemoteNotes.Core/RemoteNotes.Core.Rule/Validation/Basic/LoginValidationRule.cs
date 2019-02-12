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
    public class LoginValidationRule : ValidationRuleBase
    {
        public LoginValidationRule() : base("Login must be a string composed of letters and digits")
        {
        }

        public ValidationResult IsValid(string login)
        {
            ValidationResult validationResult = new ValidationResult();

            if (login == null || !login.IsStringWithNumbers())
            {
                string errorMessage = this.GetErrorMessage();
                validationResult = new ValidationResult(false, errorMessage);
            }

            return validationResult;
        }
    }
}
