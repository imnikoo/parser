   M S B A M L   `   `   `  ����W  SMaterialDesignThemes.Wpf, Version=1.2.0.11042, Culture=neutral, PublicKeyToken=nullC&clr-namespace:MaterialDesignThemes.WpfMaterialDesignThemes.Wpf  5      Y1clr-namespace:MaterialDesignThemes.Wpf.Converters#MaterialDesignThemes.Wpf.Converters  5      \ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089  �� MergedDictionaries �� SourceJ    DMaterialDesignThemes.Wpf.Converters.TextFieldHintVisibilityConverter $   TextFieldHintVisibilityConverter  MaterialDesignTextBox �� 
TargetType �� Property �� Value �� RelativeSource �� AncestorType �� Path  MaterialDesignTextBoxBorder.   (MaterialDesignThemes.Wpf.TextFieldAssist-  'System.Windows.Input.KeyboardNavigation ) %MaterialDesignValidationErrorTemplate m� Command	 m� Icon  MaterialDesignBody
 �� 
TargetType ��Name J� SnapsToDevicePixels �� Padding ��Name ��Name J� IsHitTestVisible �� 	Converter J� Opacity(   "MaterialDesignThemes.Wpf.Underline  Name �� Triggers P� Property P� Value �� 
TargetName  PrimaryHueMidBrush  ValidationErrorBrush �� Triggers ]� 
Conditions �� Property �� Value % !MaterialDesignFloatingHintTextBox �� BasedOn'  !System.Windows.VisualStateManager   VisualStateGroups%  System.Windows.VisualStateGroup   Transitions%  System.Windows.VisualTransition   From	    To!   
Storyboard" �� TargetProperty# �� 
TargetName$ g� Duration	% W� To& W� EasingFunction-  'System.Windows.Media.Animation.SineEase7  1System.Windows.Media.Animation.EasingFunctionBase'   
EasingMode	( t� To) t� EasingFunction*   States 	  System.Windows.VisualState+ 	  
Storyboard, � UseLayoutRounding�� 5      D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    :x,http://schemas.microsoft.com/winfx/2006/xaml     5      .wpf&clr-namespace:MaterialDesignThemes.Wpf  5      @
converters1clr-namespace:MaterialDesignThemes.Wpf.Converters  5        5      �� 5   
   $6 0MaterialDesignTheme.ValidationErrorTemplate.xaml?�6   %  &	        &	      7  7   &	 b    7     5
      62   �� 5      " ��6*   .�5   
   ��  � �� 6'   ��  �� " �$ (TextElement.Foreground)��� 5   
    � ��# �  6(   �� 5   
    � ��$ 0 0 0 1q�6,   �� 5   
    �@ TextBoxViewMargin$ 1 0 1 0q�6B   �� 5   
    � ��
 ���� 6'   �� 5   
    �@��
CaretBrush 6'   ��  �� *Self+$ BorderBrush��� 5   
    �@ TabNavigation$
 None=�6=   �� 5   
    � ��$ Stretch=�67   �� 5   
    � ��$ Stretch=�65   �� 5   
    �@�FocusVisualStyle 6-   Z� �� 5   
    �@J�	AllowDrop . 6&   �� 5   
    �@��PanningMode$ VerticalFirst=�65   �� 5   
    �@��IsFlicksEnabled .  63   �� 5   
    �@=�ErrorTemplate8   65   �� 5   
    �@�ContextMenu 5      �� 5      .@�5      m� $
��_Cut��6   $	 Cut��6-   	 5       (� 5!      $��16��6&   $��16��61   .��5"   "   �� $��24��6)   $��24��64   .+�5#   &   F� �������!��- �@]� @T� ���� �ا р�O 	= р�O��- � �  �� ��y�  � � �  � � � �y� � �  � � ��  � � �  � � �  �� � �  � Ѐ�[  -1� 	= ����� �� � 	= ����J  $� ��[  $� � z ����� �� � z p�#`Vl  -1��[  -1Ѐ�[  z � 	= ��[ ��� �� � 	= ��J ��J  	= ��[  	= � z ��[ ��� �� � z p}l `Vl  z ��[  z �@� ��t Ӱ�� ��l ��� 0�d ��� ��[ ׀�[ ��   	=  	= ׀� ��[   	=  	= ׀�[ ���   	=  	= �0�d ��� ��l ��� ��t @� р��  � ���t �� Ӡ�l P�� 0�d ��� ��[ ��� ׀� ��  	=  	= ׀�[ ��O  	=  	= ׀�� ��  	=  	= Ӏ�� Ч	��� `C@� @�� � � ��� ���!@o@р�O@o@р�O -1�@� ��t 	#���  62  5$   #   5%      5'      m� 5(      $��_Copy��6   $
 Copy��6.   	 5)      (� 5*      $��16��6&   $��16��61   .��5+   "   �� $��24��6)   $��24��64   .+�5,   &   F� �������!@o@� z @o@� z ��j ���!��j ���!@KL � z @KL ׀�[ ��j  �� �� р�[ @o@� z ��^ �� �� ���!��^�@o@@o@ �� �� �@o@��j ���!@KL  �� �� � $� @B � 	= @B ׀� ��-  �� �� р� @f� 	= @f� 	= ��- � $� ��- � $� @B 	#���  6�   5-   #   5.      50      m� 51      $��_Paste��6   $ Paste��6/   	 52      (� 53      $��16��6&   $��16��61   .��54   "   �� $��24��6)   $��24��64   .+�55   &   F� �������! -1�@KL  -1�@KL  	= ���j  	= ���j ��j �@f��j �@f 	= ���! 	= � � �� �@]� ��- �� �  	= ���ا ��- �� � �� ����!�� Ѡ"� �� � �� @�  ��  � ��D�      |� @� `� �� �@KL �� ���-  	=  �� �� ���-  -1�@KL ��O �� �� ���!��O�@o@ -1 �� �� �@o@ 	= ���!��  �� �� 	#���  6	  56   #   57      59      5:      5<      �� 5=   
    � �� 5>      �� 5?      "
 ��6"   .R�5@      � .+�5A      �� $ border��6!   #��z��5B   !   #��z��6M   #��z��5C   !    . $ 0 4 0 4q�5E   !   ._�5F      � #��z��6#   #��z��5G   #   #��z��5H   #   .+�5I   "   �� $ PART_ContentHost��6/   |�.  $��Hidden=�6[   $��Hidden=�6�   �� 5K   "   $
 Hint��5N   ,    .  $��1 0 1 0q�5O   ,   ��5K   ,   �� $  (wpf:TextFieldAssist.Hint)� �� *TemplatedParent+y�5L   ,   �� *Text+8   5P   ,   �� $' !(wpf:TextFieldAssist.HintOpacity)� �� *TemplatedParent+5Q      5R        5S      $ 	Underline��6(   y�6;   �� $0 *(wpf:TextFieldAssist.DecorationVisibility)� �� *TemplatedParent+5T       5U      P� 5V       � {� .  . �5W      �� $ border��68    �@J�Opacity$
 0.56Q�6L   5X      P� 5Y       �@J�IsMouseOver . . �5Z      �� # �  6<    � ��5[      P� 5\       �@J�IsKeyboardFocused . . �5]      �� $ 	Underline��6%    �@ IsActive . 6P   5^      P� 5_       �@=�HasError . . �5`      �� # �  6<    � ���� 5a      $ 	Underline��6%   # �  6R    � ��5b      5d      5f       5g   
   ]� 5h       5i      �� 5j      + �@��#IsInactiveSelectionHighlightEnabled . 6O   �� 5k       �@��IsSelectionActive .  6=   ./�5m      ��  �@��SelectionBrush# � /�63   5n      5p      �� 5r      " ��66   8   .�5s   
   ��  �@ Text 65   ��  �� *Self+$
 Text��� 5t   
    �@ Managed 68   ��  �� *Self+�� 5u   
    � �� 5v      �� 5w      "
 ��6"   .R�5x      �  5y        5z      MaterialDesignStates�� 5{   "     5|   &   $ *��67   $%  MaterialDesignStateTextNotEmpty��6@   .! 5}   *   �� .��5~   .   W� $" FontSize�6>   $
# Hint��6c   $$ 0:0:0.3D�5   >   $% 10X�6Q   & 5�   2     5�   6   $' EaseOut=�6?   5�   /   W� 5�   .   $" Opacity�6>   $
# Hint��6b   $$ 0:0:0.3D�5�   >   $% 1X�6Q   & 5�   2     5�   6   $' EaseOut=�6?   5�   /   t� 5�   .   $" (FrameworkElement.Margin)�6A   $
# Hint��6w   $$ 0:0:0.3D�5�   A   $( 	1,-16,1,0X�6T   ) 5�   2     5�   6   $' EaseOut=�6?   5�   /   5�   +   5�   '     5�   &   $ *��67   $"  MaterialDesignStateTextEmpty��6@   .! 5�   *   �� .��5�   .   W� $" FontSize�6>   $
# Hint��6c   $$ 0:0:0.3D�5�   >   & 5�   2     5�   6   $' EaseOut=�6?   5�   /   W� 5�   .   $" Opacity�6>   $
# Hint��6b   $$ 0:0:0.3D�5�   >   & 5�   2     5�   6   $' EaseOut=�6?   5�   /   t� 5�   .   $" (FrameworkElement.Margin)�6A   $
# Hint��6w   $$ 0:0:0.3D�5�   A   ) 5�   2     5�   6   $' EaseOut=�6?   5�   /   5�   +   5�   '   .* 5�   "   	  #MaterialDesignStateTextNotEmpty��.+ 5�   &   �� .��5�   *   W� $" FontSize�6:   $
# Hint��6_   $$ 0D�5�   :   $% 10X�6G   W� 5�   *   $" Opacity�6:   $
# Hint��6^   $$ 0D�5�   :   $% 1X�6G   t� 5�   *   $" (FrameworkElement.Margin)�6=   $
# Hint��6s   $$ 0D�5�   =   $( 	1,-16,1,0X�6J   5�   '   5�   #   	  5�   "    MaterialDesignStateTextEmpty��.+ 5�   &   �� .��5�   *   W� $" FontSize�6:   $
# Hint��6_   $$ 0D�5�   :   W� 5�   *   $" Opacity�6:   $
# Hint��6^   $$ 0D�5�   :   t� 5�   *   $" (FrameworkElement.Margin)�6=   $
# Hint��6s   $$ 0D�5�   =   5�   '   5�   #   5�      .+�5�      �� $ border��6!   #��z��5�   !   #��z��5�   !   #��z��5�   !    . $ 0 4 0 4q�5�   !   ._�5�      � $��0 12 0 0q�6#   #��z��5�   #   #��z��5�   #   .+�5�   "   �� $ PART_ContentHost��6/   |�.  $��Hidden=�5�   /   $��Hidden=�6V   # z 5�   /   #, z, 5�   /   �� 5�   "   $
 Hint��5�   ,    .  #��z��5�   ,   $
��Left=�5�   ,   $	��Top=�5�   ,   $��1 0 1 0q�5�   ,   ��5�   ,   �� $  (wpf:TextFieldAssist.Hint)� �� *TemplatedParent+ 5�   ,   �� $' !(wpf:TextFieldAssist.HintOpacity)� �� *TemplatedParent+5�      5�        5�      $ 	Underline��6(   y�6;   �� $0 *(wpf:TextFieldAssist.DecorationVisibility)� �� *TemplatedParent+5�       5�      ]� 5�       5�      �� 5�   "    �@ IsNullOrEmpty .  6Y   �� 5�   "    �@J�IsKeyboardFocused . 6I   ./�5�      �� $
 Hint��6%   # �  6M    � ��5�      P� 5�       � {� .  . �5�      �� $ border��68    �@J�Opacity$
 0.56Q�6L   5�      P� 5�       �@J�IsMouseOver . . �5�      �� # �  6<    � ��5�      P� 5�       �@J�IsKeyboardFocused . . �5�      �� $ 	Underline��6%    �@ IsActive . 6P   5�      P� 5�       �@=�HasError . . �5�      �� # �  6<    � ���� 5�      $ 	Underline��6%   # �  6R    � ��5�      5�      5�      5�      5�      