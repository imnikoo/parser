using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using RemoteNotes.Core.Rule.Contract.Base;
using RemoteNotes.Core.Rule.Validation.Basic;

namespace RemoteNotes.Core.Rule.Validation.Data
{
    public class UserInfoValidationRule
    {
        private LoginValidationRule loginValidationRule;

        public UserInfoValidationRule()
        {
            this.loginValidationRule = new LoginValidationRule();
        }

        public ValidationResult IsValid(string login)
        {
            List<ValidationResult> validationResultCollection = new List<ValidationResult>();

            validationResultCollection.Add(this.loginValidationRule.IsValid(login));

            return new ValidationResult(validationResultCollection);
        }
    }
}
