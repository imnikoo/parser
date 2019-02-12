// --------------------------------------------------------------------------------------------------------------------
// <copyright file="RelayCommand.cs" company="DNU">
//   DNU
// </copyright>
// <summary>
//   The relay command.
// </summary>
// --------------------------------------------------------------------------------------------------------------------

using System;
using System.Diagnostics;
using System.Windows.Input;

namespace Common.UI.Utility.Commands
{
    ///// <summary>
    ///// The relay command.
    ///// </summary>
    //public class RelayCommand : ICommand 
    //{ 
    //    #region Fields 
    //    readonly Action<object> _execute; 
    //    readonly Predicate<object> _canExecute; 
    //    #endregion 
    //    // Fields
    //    #region Constructors 
    //    public RelayCommand(Action<object> execute) : this(execute, null) { } 
    //    public RelayCommand(Action<object> execute, Predicate<object> canExecute)
    //    {
    //        if (execute == null) throw new ArgumentNullException("execute"); 
    //        _execute = execute; _canExecute = canExecute;
    //    } 
    //    #endregion 

    //    // Constructors 
    //    #region ICommand Members 
    //    [DebuggerStepThrough] 
    //    public bool CanExecute(object parameter)
    //    {
    //        return _canExecute == null ? true : _canExecute(parameter);
    //    } 

    //    public event EventHandler CanExecuteChanged
    //    {
    //        add
    //        {
    //            CommandManager.RequerySuggested += value;
    //        } 
    //        remove
    //        {
    //            CommandManager.RequerySuggested -= value;
    //        }

    //    } 

    //    public void Execute(object parameter)
    //    {
    //        _execute(parameter);
    //    } 
    //    #endregion 
    //    // ICommand Members 
    //}

    public class RelayCommand : ICommand
    {
        protected readonly Func<Boolean> canExecute;

        protected readonly Action execute;

        public event EventHandler CanExecuteChanged
        {
            add
            {
                if (this.canExecute != null)
                {
                    CommandManager.RequerySuggested += value;
                }
            }

            remove
            {
                if (this.canExecute != null)
                {
                    CommandManager.RequerySuggested -= value;
                }
            }
        }

        public RelayCommand(Action execute, Func<Boolean> canExecute)
        {
            if (execute == null)
            {
                throw new ArgumentNullException("execute");
            }
            this.execute = execute;
            this.canExecute = canExecute;
        }

        public RelayCommand(Action execute)
            : this(execute, null)
        {
        }

        public virtual Boolean CanExecute(Object parameter)
        {
            return this.canExecute == null ? true : this.canExecute();
        }

        public virtual void Execute(Object parameter)
        {
            this.execute();
        }
    }
}
