   M S B A M L   `   `   `  ����W  SMaterialDesignThemes.Wpf, Version=1.2.0.11042, Culture=neutral, PublicKeyToken=nullC&clr-namespace:MaterialDesignThemes.WpfMaterialDesignThemes.Wpf  5      Y1clr-namespace:MaterialDesignThemes.Wpf.Converters#MaterialDesignThemes.Wpf.Converters  5      \ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089  �� MergedDictionaries �� Source=    7MaterialDesignThemes.Wpf.Converters.BrushRoundConverter   Key  FocusVisual �� Property �� Value J� SnapsToDevicePixels �� StrokeDashArray  MaterialDesignListBoxItem �� 
TargetType �� RelativeSource �� AncestorType	 �� 
TargetType'  !System.Windows.VisualStateManager
   VisualStateGroups%  System.Windows.VisualStateGroup   Name   Transitions%  System.Windows.VisualTransition   GeneratedDuration	   To   GeneratedEasingFunction/  )System.Windows.Media.Animation.CircleEase7  1System.Windows.Media.Animation.EasingFunctionBase   
EasingMode   States   System.Windows.VisualState   Name   
Storyboard �� 
TargetName �� TargetProperty	 W� To g� Duration ��Name J� Opacity  BrushRoundConverter �� 	Converter J� RenderTransformOrigin �� ScaleX%   MaterialDesignThemes.Wpf.Ripple   Feedback " MaterialDesignCardsListBoxItem#   MaterialDesignThemes.Wpf.Card �� ContentStringFormat  MaterialDesignListBox  MaterialDesignBody �� Triggers  ]� 
Conditions! �� Property" �� Value  MaterialDesignCardsListBox# �� BasedOn�� 5      D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    :x,http://schemas.microsoft.com/winfx/2006/xaml     5      .wpf&clr-namespace:MaterialDesignThemes.Wpf  5      @
converters1clr-namespace:MaterialDesignThemes.Wpf.Converters  5        5      �� 5   
   $g apack://application:,,,/MaterialDesignThemes.Wpf;component/Themes/MaterialDesignTheme.Shadows.xaml?�6   �� 5   
      5	      BrushRoundConverter  6-   5
      %   &	       &	 �     7  7  7  &	 g    7  &	 �	    7  &	 i    7  7  �� 5      .�5   
   ��  � �� 5      �� 5      .R�5      �� $��2q�6     . #��� ��6F   $��1��6�   $	 1 2R�6�   5      5      5      �� 5      " ��6.   .�5      ��  � ��
 ���� 6!   �� 5   
    � ��$ 0q�6,   �� 5       � �� 61   �� *HorizontalContentAlignment+ �� " ���� 5       � �� 6/   �� *VerticalContentAlignment+ �� " ���� 5       � ��$ 8q�6   �� 5   
    �@J�SnapsToDevicePixels . 60   �� 5       � �� 5      �� 5       "	 ��6   .R�5!      �� #��z��6   #��z��5"      #��z��5#      #��z��5$      #}�z}�5%      
 5&        5'      $ CommonStates��6/    5(   "     5)   &   $ 0:0:0.3D�67   $ Normal��6S    5*   *     5+   .   $ EaseOut=�69   5-   '   . 5/   "     $ Normal��6.     50   "   $ 	MouseOver��6.   . 51   &   �� .��52   *   W� $ MouseOverBorder��6:   $ Opacity�6b   $	 0.1X�53   >   $ 0D�6G   54   '   55   #     56   "   $ Disabled��6.   57        58      $ SelectionStates��6/    59   "     5:   &   $ 0:0:0.6D�67   . 5<   "     $ Selected��6.   . 5=   &   �� .��5>   *   W� $ SelectedBorder��6:   $ Opacity�5?   :   $
 0.18X�5@   :   $ 0D�6D   5A   '   5B   #     5C   "   $ 
Unselected��6.   5D      ._�5F      � .+�5G      �� $ MouseOverBorder��6%   $ 0Q�5H   %   ��5I   %   �� *
Foreground+8   �� 5K      $ SelectedBorder��6%   $ 0Q�5L   %   $ 0.5,0.5&�5N   %   ��5M   %   �� *
Foreground+8  z�5O   "   �� 5P   &   $ 1Q�65   5R        5S      |�.  #��z��5U   )   #��z��5V   )   #��z��5W   )   # z 5X   )   #��z��5Y   )   #��z��5Z   )   #��z��5[   )    5S   )   �� *
Foreground+8  5[   )   5\      5]      5^      5`      5a      �� 5c      " ��63   .�5d   
   ��  �@J�SnapsToDevicePixels . 60   �� 5e   
    � ��$ 0q�6$   �� 5f   
    � ��$ 0 0 8 8q�6#   65   �� 5g   
    � �� 67   �� *HorizontalContentAlignment+ �� " ���� 5h   
    � �� 65   �� *VerticalContentAlignment+ �� " ���� 5i   
    � ��
 �����6'   �� 5j   
    � ��
 ���� 6(   �� 5k   
    � ��$ 1q�6,   �� 5l   
    �@�FocusVisualStyle8   6-   �� 5m   
    � �� 5n      �� 5o      "	 ��6"   .R�5p        #��z��6   #��z��5q      # z 5r      #��z��5s      5t      5v      5w      �� 5y      " ��6*   .�5z   
   ��  � ��
 ���� 6'   �� 5{   
    � ��
 ���� 6(   �� 5|   
    � ��$ 0q�6,   �� 5}   
    � ��# �  6'   �� 5~   
    � ��$ Disabled=�6G   �� 5   
    � ��$
 Auto=�6E   �� 5�   
    � �� . 6:   �� 5�   
    �@��PanningMode$
 Both=�65   �� 5�   
    �@��IsFlicksEnabled .  63   �� 5�   
    � ��$ Center=�65   �� 5�   
    � ��8   6/   �� 5�   
    � �� 5�      �� 5�      "	 ��6"   .R�5�      �� $ Bd��6   #��z��6)   #��z��6U   #��z��6�    . ._�5�      �� |�.  #��z��69   .��5�      �� # z 6-   5�      5�       5�      ]� 5�        5�      �� 5�   "   ! �@��
IsGrouping" . 6B   �� 5�   "   "! �@%�IsVirtualizingWhenGrouping" .  6d   ./�5�      ��  � �� .  6N   5�      5�      5�      5�      �� 5�      " ��6/   8#   .�5�   
   ��  � ��8  6/   5�      5�      