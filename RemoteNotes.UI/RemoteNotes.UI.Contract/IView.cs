﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace RemoteNotes.UI.Contract
{
    /// <summary>
    /// The View interface.
    /// </summary>
    public interface IView
    {
        /// <summary>
        /// The set focus.
        /// </summary>
        void SetFocus();

        /// <summary>
        /// The show error.
        /// </summary>
        /// <param name="error">
        /// The error.
        /// </param>
        void ShowError(string error);

        void ClearError();
    }
}
