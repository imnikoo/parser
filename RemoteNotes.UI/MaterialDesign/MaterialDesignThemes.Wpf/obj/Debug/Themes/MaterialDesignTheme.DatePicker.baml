   M S B A M L   `   `   `  ����W  SMaterialDesignThemes.Wpf, Version=1.2.0.11042, Culture=neutral, PublicKeyToken=nullC&clr-namespace:MaterialDesignThemes.WpfMaterialDesignThemes.Wpf  5      Y1clr-namespace:MaterialDesignThemes.Wpf.Converters#MaterialDesignThemes.Wpf.Converters  5      \ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089  �� MergedDictionaries �� SourceJ    DMaterialDesignThemes.Wpf.Converters.TextFieldHintVisibilityConverter $   TextFieldHintVisibilityConverter # MaterialDesignDatePickerTextBox �� 
TargetType:  4System.Windows.Controls.Primitives.DatePickerTextBox �� Property �� Value �� RelativeSource �� AncestorType �� Path.   (MaterialDesignThemes.Wpf.TextFieldAssist �� 
TargetType	 � 	Resources  Key
 �� Color'  !System.Windows.VisualStateManager   VisualStateGroups%  System.Windows.VisualStateGroup   Transitions%  System.Windows.VisualTransition   GeneratedDuration	   To   States   System.Windows.VisualState   
Storyboard g� Duration	 W� To �� TargetProperty �� 
TargetName �Name ��Name J� IsHitTestVisible �� 	Converter J� Opacity ��Name ��Name , (MaterialDesignDatePickerCalendarPortrait&   System.Windows.Controls.Calendar  MaterialDesignBody  MaterialDesignPaper # MaterialDesignCalendarDayButton   MaterialDesignCalendarButton J� 	CacheMode&   System.Windows.Media.BitmapCache   EnableClearType   SnapsToDevicePixels  MaterialDesignShadowDepth4 J� Effect  �� Padding5	  /System.Windows.Controls.Primitives.CalendarItem! 	 Name &	 "MaterialDesignCalendarItemPortrait 
 MaterialDesignDatePicker(
  "System.Windows.Controls.DatePicker  MaterialDesignTextBoxBorder" ��Name# J� SnapsToDevicePixels$ � ColumnDefinitions% ��Name  DropDownButtonTemplate&  Name' �Name( � AllowsTransparencyA   ;MaterialDesignThemes.Wpf.CustomPopupPlacementCallbackHelper)   LargePopupCallback#* � CustomPopupPlacementCallback+ � 	StaysOpen, � PlacementTarget- �� ElementName(   "MaterialDesignThemes.Wpf.Underline.  Name/ �� Triggers0 P� Property1 P� Value2 �� 
TargetName  PrimaryHueMidBrush  ValidationErrorBrush�� 5      D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    :x,http://schemas.microsoft.com/winfx/2006/xaml     5      .wpf&clr-namespace:MaterialDesignThemes.Wpf  5      @
converters1clr-namespace:MaterialDesignThemes.Wpf.Converters  5        5      �� 5      $' !MaterialDesignTheme.Calendar.xaml?�6   %�  &	        &	      7   &	 �    7  7  &	
 �    7  7     5
      62   �� 5      "  64   .�5      ��  � �� 6!   ��  �� " �$ (TextElement.Foreground)��� 5       �@ TextBoxViewMargin$ 1 0 0 0q�6<   �� 5       � ��
 ���� 6!   �� 5       �@��
CaretBrush 6!   ��  �� *Self+$ BorderBrush��� 5       �@��PanningMode$ VerticalFirst=�6/   �� 5       �@��IsFlicksEnabled .  6-   �� 5       � �� 5      �� 5      "  6   .R�5      � 	 5      ���� 5   	   WatermarkBrush #
 z��60   5   	    5        5   	   CommonStates�� 5   
     5      $ 0D�6     5      $ 0:0:0.1D�6   $ 	MouseOver��68   . 5    
     
Normal��6     5!   
   	MouseOver��6   5"   
     5#   	   WatermarkStates�� 5$   
     5%      $ 0D�6   . 5'   
     Unwatermarked��6     5(   
   Watermarked��. 5)      �� .��5*      W� $ 0D�6   $	 .23X�6)   $ Opacity�62   $ PART_Watermark��6V   5+      5,      5-   
     5.   	   FocusStates�� 5/   
     50      $ 0D�6   . 52   
     	Unfocused��6     53   
   Focused��6   54   
   .+�56      � $ WatermarkContent��6   #��z��6'   #��z��6j   .+�57      �� $
 Hint��59   (    .  $��1 0 1 0q�5;   (   ��57   (   �� $  (wpf:TextFieldAssist.Hint)� �� *TemplatedParent+y�58   (   �� *Text+8    5<   (   �� $' !(wpf:TextFieldAssist.HintOpacity)� �� *TemplatedParent+�� 5=   	   $ PART_Watermark��6   |�.   .  $ 0Q�6[   $y�	Collapsed=�6g   �� 5>   	   $ PART_ContentHost��6   #��z��60   $��0q�6z   #��z��6�   5?   	   5@      5A      5C      5D      �� 5F      "  6:   .�5G      ��  � ��# �  6!   �� 5H       � ��# �  6!   �� 5I       �@ CalendarDayButtonStyle8   6-   �� 5J       �@ CalendarButtonStyle8  6*   �� 5K       � �� 5L      �� 5M      "  6   .R�5N      ��  5P        5Q       .  . 67   .u�5S      �� # �  6   $  
16 8 16 24q�6M   ._�5T      	  $! PART_CalendarItem��6   #��z��68   #��z��6d   #��� 	 6�   5U      5V      5W      5Y      5Z      �� 5\      " 
 6*   .�5]      ��  � �� 6!   ��  �� " �$ (TextElement.Foreground)��� 5^       � ��# �  6"   �� 5_       � ��
 ���� 6!   �� 5`       �@
 CalendarStyle8   6$   �� 5a       �@
 IsTodayHighlighted . 6)   �� 5b       �@
 SelectedDateFormat$ Short=�6)   �� 5c       � ��$ 0 0 0 1q�6&   �� 5d       � ��$ Stretch=�61   �� 5e       � �� 5f      �� 5g      " 
 6   .R�5h      � .+�5i      �� $" border��5l   !   #��z��5i   !   #��z��5j   !   #��z��5k   !   $  0 4 0 4q�5m   !   # .  5o        5p   "   CommonStates��. 5q   &     
Normal��62     5r   &   Disabled��. 5s   *   �� .��5t   .   W� $ 0D�6>   $	 .56X�6K   $ Opacity�6T   $ 	PART_Root��6x   5u   +   5v   '   5w   #   ._�5y      � $ 	PART_Root��6#   #��z��5z   #   #��z��5{   #   
������ 	 5}   "   ���� 5~   &   DropDownButtonTemplate " ��6U   .R�5   *   � 
������  5�   .     5�   2   CommonStates�� 5�   6     5�   :   $ 0D�6K     5�   :   $ 0:0:0.1D�6K   $ 	MouseOver��6g     5�   :   $ 0:0:0.1D�6K   $ Pressed��6g   . 5�   6     
Normal��6B     5�   6   	MouseOver��6B     5�   6   Pressed��6B     5�   6   Disabled��6B   5�   3   .+�5�   .   (� .��5�   2   �� $��24��69   $��24��6D   .+�5�   6   F� �������!��!�@KL ��!�@KL  z ���! z � $� @B � $� ��- � z ��- � z @B р�[ @B р�[ ��- �@KL ��- �P[; ��- ��- P[; ��- @KL ���- ��!�@KL @o@ �� �� ���!@o@�@o@��! �� �� �@o@@KL �@o@P[; ��2��- ��!��- р���- р�@B �@f � � �  � � � @f�@f@f�@f � 	#��z��6�   5�   3   5�   /   5�   +   5�   '   5�   #   $ 5�   "   �� 5�   &   $��* �67   �� 5�   &   $
��Auto �67   .+�5�   "   �� $% PART_Button��6)   $��1��5�   )   #��z��5�   )   |�.  $��Right=�5�   )   $��4 0 0 -3q�5�   )   $��0��5�   )   8�� $��0q�5�   \   $��17��5�        5�   "   $& PART_TextBox��64   $��0��5�   4   #|�z|�5�   4   $��Stretch=�5�   4   $��0��5�   4   $��Center=�5�   4   #���  5�   4   $��Stretch=�5�      � 5�   "   $' 
PART_Popup��6(   ( . $��Custom=�5�   (   #* Z) 5�   (   + .  $
��Fade=�5�      , 5�   (   �� $- PART_TextBox��5�      5�      5�        5�      $. 	Underline��6(   y�6;   �� $0 *(wpf:TextFieldAssist.DecorationVisibility)� �� *TemplatedParent+5�      / 5�      P� 5�      0 � {�1 .  . �5�   	   �� $2 border��6#    �@J�Opacity$
 0.56Q�67   5�   	   P� 5�      0 �@J�IsMouseOver1 . . �5�   	   �� # �  6'    � ��5�   	   P� 5�      0 �@J�IsKeyboardFocusWithin1 . . �5�      �� $2 	Underline��6%    �@ IsActive . 6P   �� 5�   	   # �  6(    � ��5�   	   P� 5�      0 �@=�HasError1 . . �5�   	   �� # �  6'    � ���� 5�      $2 	Underline��6%   # �  6R    � ��5�   	   5�      5�      5�      5�      