using System;
using System.Globalization;
using System.Windows.Data;

namespace Common.UI.Utility.Converter
{
    [ValueConversion(typeof(int), typeof(bool))]
        public class IntegerBoolConverter : IValueConverter
        {

            public object Convert(object value, Type targetType, object parameter, CultureInfo culture)
            {
                int param = int.Parse(parameter.ToString());
                if (value == null)
                {
                    return false;
                }
                else
                {
                    return (bool)System.Convert.ToBoolean(System.Convert.ToInt32(value) == param);

                    // (int) System.Convert.ToInt32((System.Convert.ToInt32(value) == param)) * param ;

                }
            }

            public object ConvertBack(object value, Type targetType, object parameter, CultureInfo culture)
            {
                int param = int.Parse(parameter.ToString());
                return (int)System.Convert.ToInt32(value) * param;


                // (bool)System.Convert.ToBoolean((System.Convert.ToInt32(value) == param));
                //// (bool) System.Convert.ToBoolean((int)~(System.Convert.ToInt32(value) ^ param )) ;


            }

        }
    

}
