using RemoteNotes.Core.Rule.Contract.Base;

namespace RemoteNotes.Core.Rule.Contract
{
    public interface IEnterOperationValidationRule
    {
        ValidationResult IsValid(string login, string password);

        ValidationResult ValidateLogin(string login);

        ValidationResult ValidatePassword(string password);
    }
}
