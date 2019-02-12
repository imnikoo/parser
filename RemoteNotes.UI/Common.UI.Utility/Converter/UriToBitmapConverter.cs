using System;
using System.Windows.Data;
using System.Windows.Media.Imaging;

namespace Common.UI.Utility.Converter
{
    // Usage
    //   1: <Window.Resources>
    //   2:     <local:UriToBitmapConverter x:Key="UriToBitmapConverter" />
    //   3: </Window.Resources>
    //  <Image Source="{Binding Path=FullPath, Converter={StaticResource UriToBitmapConverter}}" />
    public class UriToBitmapConverter : IValueConverter
    {
        public object Convert(object value, Type targetType, object parameter, System.Globalization.CultureInfo culture)
        {
               BitmapImage bi = new BitmapImage();
               bi.BeginInit();
               bi.DecodePixelWidth = 100;
               bi.CacheOption = BitmapCacheOption.OnLoad;
               bi.UriSource = new Uri( value.ToString() );
               bi.EndInit();

             return bi;
        }
  
         public object ConvertBack(object value, Type targetType, object parameter, System.Globalization.CultureInfo culture)
         {
             throw new Exception("The method or operation is not implemented.");
         }
  }
}
