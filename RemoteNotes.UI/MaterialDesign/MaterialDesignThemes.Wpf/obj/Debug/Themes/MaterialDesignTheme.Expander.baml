   M S B A M L   `   `   `  ����W  SMaterialDesignThemes.Wpf, Version=1.2.0.11042, Culture=neutral, PublicKeyToken=nullC&clr-namespace:MaterialDesignThemes.WpfMaterialDesignThemes.Wpf  5      \ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089 &  "MaterialDesignExpanderToggleButton  �� 
TargetType �� Property �� Value �� 
TargetType'   !System.Windows.VisualStateManager    VisualStateGroups%  System.Windows.VisualStateGroup   Transitions%  System.Windows.VisualTransition   From	   To   GeneratedEasingFunction0  *System.Windows.Media.Animation.QuarticEase7  1System.Windows.Media.Animation.EasingFunctionBase	   
EasingMode
   
Storyboard �� TargetProperty �� 
TargetName9  3System.Windows.Media.Animation.EasingDoubleKeyFrame O� KeyTime O� Value   GeneratedDuration   States   System.Windows.VisualState   
Storyboard ��Name J� RenderTransformOrigin J� SnapsToDevicePixels , (MaterialDesignExpanderHeaderToggleButton  MaterialDesignExpander  MaterialDesignPaper.  (System.Windows.Media.Animation.CubicEase R� KeyTime  System.Windows.Visibility   Visible R� Value   	Collapsed � RowDefinitions � ColumnDefinitions � OverridesDefaultStyle d� 	IsChecked �� Path �� Mode �� RelativeSource  � LayoutTransform! �� ScaleX" �� ScaleY�� 5      D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    :x,http://schemas.microsoft.com/winfx/2006/xaml     5      .wpf&clr-namespace:MaterialDesignThemes.Wpf  5      %�  &	        &	 �	    &	 �
    7  7   7  �� 5      "  d�67   .�5   
   ��  � ��$ 16��6"   �� 5   
    � ��$ 16��6#   �� 5   
    � �� 5	      �� 5
      " d�6"   .R�5      �� 
������ $��16��66   $��16��6B    5        5      CheckStates�� 5   "     5   &   $ 	Unchecked��67   $ Checked��6H    5   *     5   .   $	 EaseOut=�6:   .
 5   *   �� .��5   .   U� $V P(UIElement.RenderTransform).(TransformGroup.Children)[2].(RotateTransform.Angle)�6L   $ 
ExpandPath��6�   .\�5   2     $ 0��6G   $ 0Q�6S     5   2   $ 0:0:0.2��6G   $
 -180Q�6Y   5   /   5   +   5   '     5   &   $ 0D�67   $ 	Unchecked��6M   .
 5   *   �� .��5   .   U� $V P(UIElement.RenderTransform).(TransformGroup.Children)[2].(RotateTransform.Angle)�6L   $ 
ExpandPath��6�   .\�5   2     $ 0��6G   $
 -180Q�6S   5   /   5   +   5    '     5!   &   $ 0D�67   $ Checked��6M   .
 5"   *   �� .��5#   .   U� $V P(UIElement.RenderTransform).(TransformGroup.Children)[2].(RotateTransform.Angle)�6L   $ 
ExpandPath��6�   .\�5$   2     $ 0��6G   $ 0Q�6S   5%   /   5&   +   5'   '     5(   &   $ Checked��67   $ 0D�6F   $ 	Unchecked��6\    5)   *     5*   .   $	 EaseOut=�6:   .
 5,   *   �� .��5-   .   U� $V P(UIElement.RenderTransform).(TransformGroup.Children)[2].(RotateTransform.Angle)�6L   $ 
ExpandPath��6�   .\�5.   2     $ 0��6G   $
 -180Q�6S     5/   2   $ 0:0:0.2��6G   $ 0Q�6Y   50   /   51   +   52   '   . 54   "     Checked��. 55   &   �� .��56   *   U� $V P(UIElement.RenderTransform).(TransformGroup.Children)[2].(RotateTransform.Angle)�6H   $ 
ExpandPath��6�   .\�57   .     $ 0:0:0.2��6C   $
 -180Q�6U   58   +   59   '   5:   #     5;   "   	Unchecked��. 5<   &   �� .��5=   *   U� $V P(UIElement.RenderTransform).(TransformGroup.Children)[2].(RotateTransform.Angle)�6H   $ 
ExpandPath��6�   .\�5>   .     $ 0:0:0.2��6C   $ 0Q�6U   5?   +   5@   '   5A   #   5B      ._�5D      (� .��5E      �� $ 
ExpandPath��6%   $��24��69   $��24��6D   $ 0.5,0.5&�6P   z�5F   "   V� 5G   &   .~�5H   *   �� �� 5I   *   �� 5J   *   T� 5K   *   5L   '   .+�5N   "   F� F����Pq �� � � P�� Ѱ$� �� р���� � �  $� р�[ ��� �Pq �� 	 . #��z��5O   /   #��z��6S   5P   #   5Q      5R      5S      5T      5V      5W      �� 5Y      "  d�6=   .�5Z   
   ��  � ��
 ���� 6'   �� 5[   
    � ��$
 Left=�60   �� 5\   
    � ��$ Center=�6.   �� 5]   
    � ��$ 16,0,0,0q�6#   �� 5^   
    � �� 5_      �� 5`      " d�6"   .R�5a      �� #��z��6'   $��Center=�6K   5b      5d      5e      �� 5g      "  9�6+   .�5h   
   ��  � ��8   6'   �� 5i   
    � �� 5j      �� 5k      " 9�6"   .R�5l      �  5m        5n      ExpansionStates�� 5o   "     5p   &   $ 0D�67   $ Expanded��6M    5q   *     5r   .   $	 EaseOut=�68   .
 5t   *   �� .��5u   .   T� $ PART_Content��6L   $ 
Visibility�6q   ..�5v   2   i� $ 0��6I   # Z 6U   5w   /   U� 5x   .   $ Opacity�6L   $ PART_Content��6p   .\�5y   2     $ 0��6G   $ 0Q�6S     5z   2   $ 0:0:0.3��6G   $ 1Q�6Y   5{   /   U� 5|   .   $] W(FrameworkElement.LayoutTransform).(TransformGroup.Children)[0].(ScaleTransform.ScaleX)�6L   $ PART_Content��6�   .\�5}   2     $ 0��6G   $ .5Q�6S     5~   2   $ 0:0:0.3��6G   $ 1Q�6Y   5   /   U� 5�   .   $] W(FrameworkElement.LayoutTransform).(TransformGroup.Children)[0].(ScaleTransform.ScaleY)�6L   $ PART_Content��6�   .\�5�   2     $ 0��6G   $ 0Q�6S     5�   2   $ 0:0:0.3��6G   $ 1Q�6Y   5�   /   5�   +   5�   '     5�   &   $ 0D�67   $ 	Collapsed��6M   .
 5�   *   �� .��5�   .   T� $ PART_Content��6L   $ 
Visibility�6q   ..�5�   2   i� $ 0:0:0.5��6I   # Z 6[   5�   /   U� 5�   .   $ Opacity�6L   $ PART_Content��6p   .\�5�   2     $ 0��6G   $ 1Q�6S     5�   2   $ 0:0:0.3��6G   $ 0Q�6Y   5�   /   U� 5�   .   $] W(FrameworkElement.LayoutTransform).(TransformGroup.Children)[0].(ScaleTransform.ScaleX)�6L   $ PART_Content��6�   .\�5�   2     $ 0��6G   $ 1Q�6S     5�   2   $ 0:0:0.5��6G   $ .5Q�6Y   5�   /   U� 5�   .   $] W(FrameworkElement.LayoutTransform).(TransformGroup.Children)[0].(ScaleTransform.ScaleY)�6L   $ PART_Content��6�   .\�5�   2     $ 0��6G   $ 1Q�6S     5�   2   $ 0:0:0.5��6G   $ 0Q�6Y   5�   /   5�   +   5�   '   . 5�   "     Expanded��. 5�   &   �� .��5�   *   U� $ Opacity�6H   $ PART_Content��6l   .\�5�   .     $ 0��6C   $ 1Q�6O   5�   +   U� 5�   *   $] W(FrameworkElement.LayoutTransform).(TransformGroup.Children)[0].(ScaleTransform.ScaleX)�6H   $ PART_Content��6�   .\�5�   .     $ 0:0:0��6C   $ 1Q�6S   5�   +   U� 5�   *   $] W(FrameworkElement.LayoutTransform).(TransformGroup.Children)[0].(ScaleTransform.ScaleY)�6H   $ PART_Content��6�   .\�5�   .     $ 0:0:0��6C   $ 1Q�6S   5�   +   T� 5�   *   $ PART_Content��6H   $ 
Visibility�6m   ..�5�   .   i� $ 0��6E   # Z 6Q   5�   +   5�   '   5�   #     5�   "   	Collapsed��. 5�   &   �� .��5�   *   U� $ Opacity�6H   $ PART_Content��6l   .\�5�   .     $ 0��6C   $ 0Q�6O   5�   +   U� 5�   *   $] W(FrameworkElement.LayoutTransform).(TransformGroup.Children)[0].(ScaleTransform.ScaleX)�6H   $ PART_Content��6�   .\�5�   .     $ 0:0:0��6C   $ .5Q�6S   5�   +   U� 5�   *   $] W(FrameworkElement.LayoutTransform).(TransformGroup.Children)[0].(ScaleTransform.ScaleY)�6H   $ PART_Content��6�   .\�5�   .     $ 0:0:0��6C   $ 0Q�6S   5�   +   T� 5�   *   $ PART_Content��6H   $ 
Visibility�6m   ..�5�   .   i� $ 0��6E   # Z 6Q   5�   +   5�   '   5�   #   5�       5�      �� 5�      $��25��6,   �� 5�      .+�5�      �� $��0q�6!   ._�5�      �  5�   "   �� 5�   &   $��16 �67   �� 5�   &   $
��100* �67   .+�5�   "   d�  . 8��  6/   �� $ 
IsExpanded�$ TwoWay=� �� *TemplatedParent+��5�   /   �� $ 
Foreground� �� *TemplatedParent+5�   /   d� 5�   "   $��1��6/   8��  6?   �� $ 
IsExpanded�$ TwoWay=� �� *TemplatedParent+.��5�   &   �� $��Header��67   $��Stretch=�6N   ��. $��Center=�6�   5�   #   5�      5�      �� 5�      $��1��6!   ._�5�      �� $��PART_Content��6/   $	 0,0&�6C     5�   "   V� 5�   &   .~�5�   *   �� $	! 0.5Q�69   $" 0Q�6F   �� 5�   *   �� 5�   *   T� 5�   *   5�   '   5�      5�      5�      5�      5�      5�      5�      