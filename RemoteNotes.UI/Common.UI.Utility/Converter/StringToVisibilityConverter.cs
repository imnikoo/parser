using System;
using System.Windows;
using System.Windows.Data;

namespace Common.UI.Utility.Converter
{
    /// <summary>
    /// The string to visibility converter.
    /// </summary>
    /// <example>
    /// <Grid.Resources>
    ///  <Converter:StringToVisibilityConverter x:Key="PlaceVisibilityConverter" TriggerValue="place;moveTo"/>
    /// </Grid.Resources>
    /// <GroupBox  Visibility="{Binding Path=Task.Type, 
    ///                         Converter={StaticResource PlaceVisibilityConverter}}" 
    ///           Background="WhiteSmoke" 
    ///          Header="Place" 
    ///          HorizontalAlignment="Stretch"  
    ///          VerticalAlignment="Top" Margin="0,5,0,0">
    ///    <ComboBox x:Name="cboPlace" SelectedIndex="0" Margin="5"
    ///              HorizontalAlignment="Stretch"
    ///              ItemsSource="{Binding Source={StaticResource PlaceProvider}}"
    ///              Style="{StaticResource ImageComboBoxStyle}" 
    ///              SelectedValuePath="Code"
    ///              SelectedValue="{Binding Path=Task.PlaceId}"
    ///              VerticalAlignment="Top" />
    ///</GroupBox>
    /// </example>
    public class StringToVisibilityConverter : IValueConverter
    {
        private string triggerValue = string.Empty;

        #region Constructors
        /// <summary>
        /// The default constructor
        /// </summary>
        public StringToVisibilityConverter() { }

        public string TriggerValue
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

        #endregion

        #region IValueConverter Members

        public object Convert(object value, Type targetType, object parameter, System.Globalization.CultureInfo culture)
        {
            string bValue = (string)value;

            string[] triggerValues = this.TriggerValue.Split(';');

            foreach (string tv in triggerValues)
            {
                if (bValue == tv)
                {
                    return Visibility.Visible;
                }
            }

            return Visibility.Collapsed;
        }

        public object ConvertBack(object value, Type targetType, object parameter, System.Globalization.CultureInfo culture)
        {
            //Visibility visibility = (Visibility)value;

            //if (visibility == Visibility.Visible)
            //    return true;
            //else
            //    return false;
            return "";
        }
        #endregion
    }
}
