using System;
using System.Collections.Generic;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Threading;

namespace RemoteNotes.UI.Shell
{
    public class ControlManager
    {
        /// <summary>
        /// The control dictionary.
        /// </summary>
        private readonly Dictionary<string, UIElement> controlDictionary = new Dictionary<string, UIElement>();

        public void Register<T>(string key, T element) where T : UIElement
        {
            UIElement userControl = (UIElement)element;
            this.controlDictionary.Add(key, userControl);
        }

        public void Place(string containerName, string regionName, string elementName)
        {
            ContentControl containerControl = this.GetControl(containerName) as ContentControl;
            ContentControl elementControl = this.GetControl(elementName) as ContentControl;
            
            containerControl.Dispatcher.Invoke(DispatcherPriority.Normal,
                new Action(() =>
                {
                    object region;
                    region = containerControl.FindName(regionName); 

                    if (region is DockPanel)
                    {
                        ((DockPanel)region).Children.Clear();

                        if (elementControl != null)
                        {
                                    ((DockPanel)region).Children.Add(elementControl);
                        }
                    }
                    else if (region is Grid)
                    {
                        ((Grid)region).Children.Clear();
                        if (elementControl != null)
                        {
                            ((Grid)region).Children.Add(elementControl);
                        }
                    }
                    else
                    {
                        ContentControl regionControl = region as ContentControl;
                        if (elementControl != null)
                        {
                            regionControl.Content = elementControl;
                        }
                    }
                })); 
        }

        public UIElement GetControl(string key)
        {
            UIElement userControl = null;

            if (this.controlDictionary.ContainsKey(key))
            {
                userControl = this.controlDictionary[key];
            }
            else
            {
                throw new Exception($"The control '{key}' is missing");
            }

            return userControl;
        }
    }
}
