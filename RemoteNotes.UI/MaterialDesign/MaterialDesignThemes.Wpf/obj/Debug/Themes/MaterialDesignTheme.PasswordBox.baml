   M S B A M L   `   `   `  ����W  SMaterialDesignThemes.Wpf, Version=1.2.0.11042, Culture=neutral, PublicKeyToken=nullC&clr-namespace:MaterialDesignThemes.WpfMaterialDesignThemes.Wpf  5      \ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089  �� MergedDictionaries �� Source   MaterialDesignPasswordBox �� 
TargetType �� Property �� Value �� RelativeSource �� AncestorType �� Path  MaterialDesignTextBoxBorder.    (MaterialDesignThemes.Wpf.TextFieldAssist-  'System.Windows.Input.KeyboardNavigation2   ,MaterialDesignThemes.Wpf.PasswordFieldAssist ) %MaterialDesignValidationErrorTemplate �� 
TargetType	 ��Name
 J� SnapsToDevicePixels �� Padding ��Name ��Name J� IsHitTestVisible �� Mode J� Opacity(   "MaterialDesignThemes.Wpf.Underline  Name �� Triggers P� Property P� Value �� 
TargetName  PrimaryHueMidBrush  ValidationErrorBrush �� Triggers ]� 
Conditions �� Property �� Value ) %MaterialDesignFloatingHintPasswordBox �� BasedOn'  !System.Windows.VisualStateManager   VisualStateGroups%  System.Windows.VisualStateGroup   Transitions%  System.Windows.VisualTransition   From	   To   
Storyboard  �� TargetProperty! �� 
TargetName" g� Duration	# W� To$ W� EasingFunction-  'System.Windows.Media.Animation.SineEase7  1System.Windows.Media.Animation.EasingFunctionBase%   
EasingMode	& t� To' t� EasingFunction(   States 	  System.Windows.VisualState) 	  
Storyboard* � UseLayoutRounding�� 5      D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    :x,http://schemas.microsoft.com/winfx/2006/xaml     5      .wpf&clr-namespace:MaterialDesignThemes.Wpf  5        5      �� 5   
   $6 0MaterialDesignTheme.ValidationErrorTemplate.xaml?�6   %�  &	        7  &	 �	    7   �� 5	      " G�6.   .�5
   
   ��  � �� 6'   ��  �� " �$ (TextElement.Foreground)��� 5   
    � �� 6'   ��  �� " �$ (TextElement.FontFamily)��� 5   
    � ��# �  6(   �� 5   
    �@G�PasswordChar$	 ●��6)   �� 5   
    � ��$ 0 0 0 1q�6,   �� 5   
    �@  TextBoxViewMargin$ 1 0 1 0q�6B   �� 5   
    � ��
 ���� 6'   �� 5   
    �@G�
CaretBrush 6'   ��  �� *Self+$ BorderBrush��� 5   
    �@ TabNavigation$
 None=�6=   �� 5   
    � ��$ Stretch=�67   �� 5   
    � ��$ Stretch=�65   �� 5   
    �@�FocusVisualStyle 6-   Z� �� 5   
    �@J�	AllowDrop . 6&   �� 5   
    �@��PanningMode$ VerticalFirst=�65   �� 5   
    �@��IsFlicksEnabled .  63   �� 5   
    �@ Managed 6<   ��  �� *Self+�� 5   
    �@=�ErrorTemplate8   65   �� 5   
    � �� 5      �� 5      " G�6"   .R�5      � .+�5      �� $	 border��6!   #��z��5    !   #��z��6M   #��z��5!   !   
 . $ 0 4 0 4q�5#   !   ._�5$      � #��z��6#   #��z��5%   #   #��z��5&   #   .+�5'   "   �� $ PART_ContentHost��6/   |�.  $��Hidden=�6[   $��Hidden=�6�   �� 5)   "   $
 Hint��5,   ,    .  $��1 0 1 0q�5-   ,   ��5)   ,   �� $  (wpf:TextFieldAssist.Hint)� �� *TemplatedParent+y�5*   ,   �� $. ((wpf:PasswordFieldAssist.HintVisibility)� �� *TemplatedParent+$ OneWay=� 5.   ,   �� $' !(wpf:TextFieldAssist.HintOpacity)� �� *TemplatedParent+5/      50        51      $ 	Underline��6(   y�6;   �� $0 *(wpf:TextFieldAssist.DecorationVisibility)� �� *TemplatedParent+52       53      P� 54       � {� .  . �55      �� $ border��68    �@J�Opacity$
 0.56Q�6L   56      P� 57       �@J�IsMouseOver . . �58      �� # �  6<    � ��59      P� 5:       �@J�IsKeyboardFocused . . �5;      �� $ 	Underline��6%    �@ IsActive . 6P   5<      P� 5=       �@=�HasError . . �5>      �� # �  6<    � ���� 5?      $ 	Underline��6%   # �  6R    � ��5@      5B      5D       5E   
   ]� 5F       5G      �� 5H      + �@G�#IsInactiveSelectionHighlightEnabled . 6O   �� 5I       �@G�IsSelectionActive .  6=   ./�5K      ��  �@G�SelectionBrush# � /�63   5L      5N      �� 5P      " G�6:   8   .�5Q   
   ��  � �� 5R      �� 5S      " G�6"   .R�5T      �  5U        5V      MaterialDesignStates�� 5W   "     5X   &   $ *��67   $% MaterialDesignStateTextNotEmpty��6@   . 5Y   *   �� .��5Z   .   W� $  FontSize�6>   $
! Hint��6c   $" 0:0:0.3D�5[   >   $# 10X�6Q   $ 5\   2     5]   6   $% EaseOut=�6?   5_   /   W� 5`   .   $  Opacity�6>   $
! Hint��6b   $" 0:0:0.3D�5a   >   $# 1X�6Q   $ 5b   2     5c   6   $% EaseOut=�6?   5e   /   t� 5f   .   $  (FrameworkElement.Margin)�6A   $
! Hint��6w   $" 0:0:0.3D�5g   A   $& 	1,-16,1,0X�6T   ' 5h   2     5i   6   $% EaseOut=�6?   5k   /   5l   +   5m   '     5n   &   $ *��67   $" MaterialDesignStateTextEmpty��6@   . 5o   *   �� .��5p   .   W� $  FontSize�6>   $
! Hint��6c   $" 0:0:0.3D�5q   >   $ 5r   2     5s   6   $% EaseOut=�6?   5u   /   W� 5v   .   $  Opacity�6>   $
! Hint��6b   $" 0:0:0.3D�5w   >   $ 5x   2     5y   6   $% EaseOut=�6?   5{   /   t� 5|   .   $  (FrameworkElement.Margin)�6A   $
! Hint��6w   $" 0:0:0.3D�5}   A   ' 5~   2     5   6   $% EaseOut=�6?   5�   /   5�   +   5�   '   .( 5�   "   	  #MaterialDesignStateTextNotEmpty��.) 5�   &   �� .��5�   *   W� $  FontSize�6:   $
! Hint��6_   $" 0D�5�   :   $# 10X�6G   W� 5�   *   $  Opacity�6:   $
! Hint��6^   $" 0D�5�   :   $# 1X�6G   t� 5�   *   $  (FrameworkElement.Margin)�6=   $
! Hint��6s   $" 0D�5�   =   $& 	1,-16,1,0X�6J   5�   '   5�   #   	  5�   "    MaterialDesignStateTextEmpty��.) 5�   &   �� .��5�   *   W� $  FontSize�6:   $
! Hint��6_   $" 0D�5�   :   W� 5�   *   $  Opacity�6:   $
! Hint��6^   $" 0D�5�   :   t� 5�   *   $  (FrameworkElement.Margin)�6=   $
! Hint��6s   $" 0D�5�   =   5�   '   5�   #   5�      .+�5�      �� $	 border��6!   #��z��5�   !   #��z��5�   !   #��z��5�   !   
 . $ 0 4 0 4q�5�   !   ._�5�      � $��0 12 0 0q�6#   #��z��5�   #   #��z��5�   #   .+�5�   "   �� $ PART_ContentHost��6/   |�.  $��Hidden=�5�   /   $��Hidden=�6V   #
 z
 5�   /   #* z* 5�   /   �� 5�   "   $
 Hint��5�   ,    .  #��z��5�   ,   $
��Left=�5�   ,   $	��Top=�5�   ,   $��1 0 1 0q�5�   ,   ��5�   ,   �� $  (wpf:TextFieldAssist.Hint)� �� *TemplatedParent+ 5�   ,   �� $' !(wpf:TextFieldAssist.HintOpacity)� �� *TemplatedParent+5�      5�        5�      $ 	Underline��6(   y�6;   �� $0 *(wpf:TextFieldAssist.DecorationVisibility)� �� *TemplatedParent+5�       5�      ]� 5�       5�      �� 5�   "    �@ IsNullOrEmpty .  6]   �� 5�   "    �@J�IsKeyboardFocused . 6I   ./�5�      �� $
 Hint��6%   # �  6M    � ��5�      P� 5�       � {� .  . �5�      �� $ border��68    �@J�Opacity$
 0.56Q�6L   5�      P� 5�       �@J�IsMouseOver . . �5�      �� # �  6<    � ��5�      P� 5�       �@J�IsKeyboardFocused . . �5�      �� $ 	Underline��6%    �@ IsActive . 6P   5�      P� 5�       �@=�HasError . . �5�      �� # �  6<    � ���� 5�      $ 	Underline��6%   # �  6R    � ��5�      5�      5�      5�      5�      