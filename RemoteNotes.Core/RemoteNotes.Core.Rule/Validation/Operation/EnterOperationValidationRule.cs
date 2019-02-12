using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using RemoteNotes.Core.Rule.Contract;
using RemoteNotes.Core.Rule.Contract.Base;
using RemoteNotes.Core.Rule.Validation.Basic;

namespace RemoteNotes.Core.Rule.Validation.Operation
{
    public class EnterOperationValidationRule : IEnterOperationValidationRule
    {
        private LoginValidationRule loginValidationRule;
        private PasswordValidationRule passwordValidationRule;

        public EnterOperationValidationRule()
        {
            this.passwordValidationRule = new PasswordValidationRule();
            this.loginValidationRule = new LoginValidationRule();
        }

        public ValidationResult IsValid(string login, string password)
        {
            List<ValidationResult> validationResultCollection = new List<ValidationResult>();

            validationResultCollection.Add(this.loginValidationRule.IsValid(login));
            validationResultCollection.Add(this.passwordValidationRule.IsValid(password));

            return new ValidationResult(validationResultCollection);
        }

        public ValidationResult ValidateLogin(string login)
        {
            return this.loginValidationRule.IsValid(login);
        }

        public ValidationResult ValidatePassword(string password)
        {
            return this.passwordValidationRule.IsValid(password);
        }
    }
}
