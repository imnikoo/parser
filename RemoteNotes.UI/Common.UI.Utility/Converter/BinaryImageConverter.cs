using System;
using System.IO;
using System.Windows.Data;
using System.Windows.Media;
using System.Windows.Media.Imaging;

namespace Common.UI.Utility.Converter
{
    public class BinaryImageConverter : IValueConverter
    {
        /// <summary>
        /// The convert. How to bind binary field with image
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
        /// <example>
        ///   <!-- Image Control -->
        ///<Image Source="{Binding Path=Image, 
        ///                Converter={StaticResource imgConverter}}" 
        ///       Stretch="UniformToFill" 
        ///  StretchDirection="Both">
        ///  <Image.BitmapEffect>
        ///   <DropShadowBitmapEffect Color="Black" />
        ///  </Image.BitmapEffect>
        ///</Image>
        /// </example>
        object IValueConverter.Convert(
            object value, Type targetType, object parameter, System.Globalization.CultureInfo culture)
        {
            if (value != null && value is byte[])
            {
                byte[] bytes = value as byte[];

                MemoryStream stream = new MemoryStream(bytes);
                ImageSource imageSource = null;
                BitmapDecoder decoder = BitmapDecoder.Create(stream, BitmapCreateOptions.None, BitmapCacheOption.None);
                imageSource = decoder.Frames[0];

                //    BitmapImage image = new BitmapImage();
                //    image.BeginInit();
                //image.s
                //    image.StreamSource = stream;
                //    image.CacheOption = BitmapCacheOption.OnLoad;
                //    image.EndInit();

                return imageSource;
            }

            return null;
        }

        object IValueConverter.ConvertBack(object value,
            Type targetType,
            object parameter,
            System.Globalization.CultureInfo culture)
        {
            return value;
            //throw new Exception("The method or operation is not implemented.");
        }
    }

}
