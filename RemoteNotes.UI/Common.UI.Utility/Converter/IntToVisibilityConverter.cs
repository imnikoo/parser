using System;

namespace Common.UI.Utility.Converter
{
    public class IntToVisibilityConverter : VisibilityConverterBase<int>
    {
 
        public IntToVisibilityConverter() { }

 
        public override object ConvertBack(object value, Type targetType, object parameter, System.Globalization.CultureInfo culture)
        {
            //Visibility visibility = (Visibility)value;

            //if (visibility == Visibility.Visible)
            //    return true;
            //else
            //    return false;
            return 0;
        }
        
    }
    
    
}
