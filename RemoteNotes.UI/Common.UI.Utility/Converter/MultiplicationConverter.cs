// --------------------------------------------------------------------------------------------------------------------
// <copyright file="MultiplicationConverter.cs" company="">
//   
// </copyright>
// <summary>
//   The multiplication converter.
// </summary>
// --------------------------------------------------------------------------------------------------------------------

namespace Common.UI.Utility.Converter
{
    using System;
    using System.Globalization;
    using System.Windows.Data;
    using System.Windows.Input;

    /// <summary>
    /// The multiplication converter.
    /// </summary>
    public class MultiplicationConverter : IValueConverter
    {
        /// <summary>
        /// The convert.
        /// </summary>
        /// <param name="value">
        /// The value.
        /// </param>
        /// <param name="targetType">
        /// The target type.
        /// </param>
        /// <param name="parameter">
        /// The parameter.
        /// </param>
        /// <param name="culture">
        /// The culture.
        /// </param>
        /// <returns>
        /// The <see cref="object"/>.
        /// </returns>
        public object Convert(object value, Type targetType, object parameter, CultureInfo culture)
        {
            if (parameter != null)
            {
                double multiplyBy = double.Parse(parameter as string);
                double input = (double)value;
                return input * multiplyBy;
            }
            return null;
        }

        /// <summary>
        /// The convert back.
        /// </summary>
        /// <param name="value">
        /// The value.
        /// </param>
        /// <param name="targetType">
        /// The target type.
        /// </param>
        /// <param name="parameter">
        /// The parameter.
        /// </param>
        /// <param name="culture">
        /// The culture.
        /// </param>
        /// <returns>
        /// The <see cref="object"/>.
        /// </returns>
        /// <exception cref="NotSupportedException">
        /// </exception>
        public object ConvertBack(object value, Type targetType, object parameter, CultureInfo culture)
        {
            throw new NotSupportedException();
        }
    }
}
