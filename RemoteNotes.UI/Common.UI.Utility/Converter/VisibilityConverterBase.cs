using System;
using System.Windows;
using System.Windows.Data;

namespace Common.UI.Utility.Converter
{
    public class VisibilityConverterBase<T> : IValueConverter
    {
        public T triggerValue;

        public T TriggerValue
        {
            get
            {
                return this.triggerValue;
            }
            set
            {
                this.triggerValue = value;
            }
        }

        public virtual object Convert(object value, Type targetType, object parameter, System.Globalization.CultureInfo culture)
        {
            T bValue = (T)value;

            
                if (bValue.Equals(this.TriggerValue))
                {
                    return Visibility.Visible;
                }
          

            return Visibility.Collapsed;
        }

        public virtual object ConvertBack(object value, Type targetType, object parameter, System.Globalization.CultureInfo culture)
        {
            //Visibility visibility = (Visibility)value;

            //if (visibility == Visibility.Visible)
            //    return true;
            //else
            //    return false;
            return new object();
        }
    }
}
