   M S B A M L   `   `   `  ����W  SMaterialDesignThemes.Wpf, Version=1.2.0.11042, Culture=neutral, PublicKeyToken=nullC&clr-namespace:MaterialDesignThemes.WpfMaterialDesignThemes.Wpf  5      Y1clr-namespace:MaterialDesignThemes.Wpf.Converters#MaterialDesignThemes.Wpf.Converters  5      'clr-namespace:ControlzEx
ControlzEx  5      \ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089  �� MergedDictionaries �� Source    BooleanToVisibilityConverterG    AMaterialDesignThemes.Wpf.Converters.NullableToVisibilityConverter  NullVisibilityConverter # InvertedNullVisibilityConverter    	NullValue    NotNullValue=   7MaterialDesignThemes.Wpf.Converters.BrushRoundConverter  BrushRoundConverter'   !MaterialDesignThemes.Wpf.PackIcon�   �ControlzEx.PackIconBase`1[[MaterialDesignThemes.Wpf.PackIconKind, MaterialDesignThemes.Wpf, Version=1.2.0.11042, Culture=neutral, PublicKeyToken=null]]   Kind ' #MaterialDesignPopupBoxToggleContent �� RelativeSource �� AncestorType �� Path'   !MaterialDesignThemes.Wpf.PopupBox �� 
TargetType  MaterialDesignPopupBox	 �� Property
 �� Value+   %MaterialDesignThemes.Wpf.ShadowAssist �� 
TargetType � 	Resources  Key%   MaterialDesignThemes.Wpf.Ripple+   %MaterialDesignThemes.Wpf.RippleAssist   
IsCentered " MaterialDesignFlatButtonRipple   Feedback J� SnapsToDevicePixels d�Name  ToggleButtonStyle   ToggleContent   ToggleContentTemplate � Cursor d� 	IsChecked �� Mode   ControlzEx.PopupEx  Name � HorizontalOffset � VerticalOffset � AllowsTransparency# � CustomPopupPlacementCallback � PlacementTarget �� ElementName#	   MaterialDesignThemes.Wpf.Card   PopupContent   PopupContentTemplate 	 MaterialDesignBody �� ClearTypeHint  � 	Resources'
  !System.Windows.VisualStateManager! 
  VisualStateGroups%  System.Windows.VisualStateGroup"   Name#   Transitions%  System.Windows.VisualTransition$   GeneratedDuration	%   To&   GeneratedEasingFunction/  )System.Windows.Media.Animation.CircleEase7  1System.Windows.Media.Animation.EasingFunctionBase'   
EasingMode(   States   System.Windows.VisualState)   Name*   
Storyboard+ �� 
TargetName, �� TargetProperty	- W� To. g� Duration/ ��Name0 J� Opacity1 �� 	Converter -
 )MaterialDesignMultiFloatingActionPopupBox  PrimaryHueMidBrush   PrimaryHueMidForegroundBrush  MaterialDesignToolTip2 �� BasedOn3 �Name4   From5   
Storyboard6 W� EasingFunction2  ,System.Windows.Media.Animation.QuadraticEase7 J� 	CacheMode&   System.Windows.Media.BitmapCache8   EnableClearType9   SnapsToDevicePixels: A�Name; J� Effect9   3MaterialDesignThemes.Wpf.Converters.ShadowConverter<   Instance= �� 	Converter> J� RenderTransformOrigin? J� Clip@ �� AngleA J� IsHitTestVisibleB �� TriggersC P� PropertyD P� ValueE �� 
TargetName0   *MaterialDesignThemes.Wpf.PopupBoxPopupModeF   	MouseOverG �� ValueH �� BindingI   MouseOverEager-  'System.Windows.Media.Animation.SineEaseJ � ToolTipK ^� 	PlacementL ��NameM   ToggleCheckedContent#N   ToggleCheckedContentTemplate / +MaterialDesignFloatingActionMiniLightButtonO N� EnterActions  OpenP N� ExitActions 	 CloseQ �� Triggers 2 .MaterialDesignMultiFloatingActionLightPopupBox  PrimaryHueLightBrush " PrimaryHueLightForegroundBrush 1 -MaterialDesignMultiFloatingActionDarkPopupBox  PrimaryHueDarkBrush ! PrimaryHueDarkForegroundBrush 3 /MaterialDesignMultiFloatingActionAccentPopupBox  SecondaryAccentBrush " SecondaryAccentForegroundBrush�� 5      D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    :x,http://schemas.microsoft.com/winfx/2006/xaml     5      .wpf&clr-namespace:MaterialDesignThemes.Wpf  5      @
converters1clr-namespace:MaterialDesignThemes.Wpf.Converters  5      '
controlzExclr-namespace:ControlzEx  5        5      �� 5   
   $f `pack://application:,,,/MaterialDesignThemes.Wpf;component/Themes/MaterialDesignTheme.Button.xaml?�6   �� 5	   
   $g apack://application:,,,/MaterialDesignThemes.Wpf;component/Themes/MaterialDesignTheme.ToolTip.xaml?�6   %�'  &	        &	      &	 &     &	 \     &	 o    &	     7  7  7  7  &	
 K
    7  7  7  7  7  7   7  7  7  7  &	 �#    7 
 &	 �$    7 
 &	 �%    7 
 �� 5      6#      5      6/      5      $ Visible=�6W   $ 	Collapsed=�6k     5      6%     5      $ DotsVertical=�6   $��4 0 4 0q�6d   $��24��6u   $��24��6�   ��5      ��  �� *FindAncestor+$ wpf:PopupBoxL�$ 
Foreground��� 5      "  6   .�5   
   �� 	 �@ ToggleContent8
   6*   �� 5   
   	 � ��$

 Left=�60   �� 5   
   	 �@ ShadowDepth$
 Depth3=�69   �� 5   
   	 � ��$
 Normal"�63   �� 5   
   	 � ��
 5      �� 5      "  6"    5      ���� 5      'd�       " d�6    ToggleButtonStyle .�5      �� 	 � ��
 5   "   �� 5    &   " d�66   .R�5!   *     #��z��65   #��z��6Y   |�.  }�.   . # �  5$   5   #��z��5%   5   #��z��5&   5   #��z��5'   5   # z 5(   5   5)   '   5+      5,      5-      .R�5.      � .+�5/      d� $ PART_Toggle��6'   8�� #��z 50   '   #��z 6Q   $
 Hand��51   '   $��Center=�52   '    5/   g   ��  �� *TemplatedParent+$ IsPopupOpen�$ TwoWay=�52   '     54      $ 
PART_Popup��6-   $ 5��56   -   $ 5��57   -   $��Custom=�59   -   $
��Fade=�5:   -    . ��54   A   ��  �� *TemplatedParent+$ IsPopupOpen�$ TwoWay=� 55   -   ��  �� *TemplatedParent+$ PopupPlacementMethod� 58   -   �� $ PART_Toggle��.��5<      	  #��z 6'   #��z 6P   #��� 	 5=   '   $��15(�5>   '   $��Regular"�5?   '   $��0 8 0 8q�5@   '   $ Enabled=�5A   '   $��5q�5B   '     5C   "   ���� 5D   &   '��       " ��6,   .�5E   *   �� 	 � ��$
 Bottom=�6U   �� 5F   *   	 � ��$

 Left=�6W   �� 5G   *   	 � ��$
 
16 0 16 16q�6D   �� 5H   *   	 � ��#
 � 	 6G   �� 5I   *   	 � ��
 5J   .   �� 5K   2   " ��6B   .R�5L   6   � ! 5M   :     5N   >   $" CommonStates��6O   # 5O   B     5P   F   $$ 0:0:0.3D�6W   $% Normal��6s   & 5Q   J     5R   N   $' EaseOut=�6Y   5T   G   .( 5V   B     $) Normal��6N     5W   B   $) 	MouseOver��6N   .* 5X   F   �� .��5Y   J   W� $+ MouseOverBorder��6Z   $, Opacity�6�   $	- 0.1X�5Z   Z   $. 0D�6c   5[   G   5\   C     5]   B   $) Disabled��6N   5^   ?   .+�5`   :   �� $/ MouseOverBorder��6A   $0 0Q�5a   A   ��5b   A   �� *
Foreground+81    5c   :   |�.  $��48��5e   E   #��z��5f   E   #��z��5g   E   #��z��5h   E   # z 5i   E   #��z��5j   E   #��z��5k   E   #��z��5l   E    5c   E   �� *
Foreground+81  5l   E   5m   7   5n   3   5p   +   5q   '   5r   #   5s      5t      5u      5v      5x      5y      �� 5{      "  6   .�5|   
   �� 	 � ��#
 �  6'   �� 5}   
   	 � ��#
 �  6(   �� 5~   
   	 � ��#
 �  6'   �� 5   
   	 �@ PlacementMode$
 TopAndAlignCentres=�6*   �� 5�   
   	 �@ 	PopupMode$
 MouseOverEager=�6&   �� 5�   
   	 �@^�	Placement$

 Left=�65   �� 5�   
   	 �@^�	IsEnabled
 .  65   �� 5�   
   	 � ��$

 Left=�60   �� 5�   
   	 � ��$
 1q�6,   �� 5�   
   	 �@�Cursor$

 Hand��6#   �� 5�   
   	 �@ ShadowDepth$
 Depth2=�69   �� 5�   
   	 � ��$
 56��6"   �� 5�   
   	 � ��$
 56��6#   �� 5�   
   	 � ��
 5�      �� 5�      "  6"    5�      ���� 5�      '_�       " _�6    82   �5�      �� 5�   "   	 � ��$
 	8 10 8 10q�6;   5�      �� 5�      'd�       " d�6    ToggleButtonStyle .�5�      �� 	 � ��
 5�   "   �� 5�   &   " d�66   .R�5�   *   � $3 RootGrid��6/   ��6A   Z� ! 5�   .     5�   2   $" CheckedStates��6C   # 5�   6     5�   :   $4 *��6K   $% Checked��6T   .5 5�   >   �� .��5�   B   W� $+ RippleRotateTransform��6R   $, Angle�5�   R   $- 45X�5�   R   $. 0:0:0.1D�5�   R   6 5�   F     5�   J   $' 	EaseInOut=�6X   5�   C   5�   ?   5�   ;     5�   :   $4 Checked��6K   $% 	Unchecked��6Z   .5 5�   >   �� .��5�   B   W� $+ RippleRotateTransform��6R   $, Angle�5�   R   $- 0X�5�   R   $. 0:0:0.1D�5�   R   6 5�   F     5�   J   $' 	EaseInOut=�6X   5�   C   5�   ?   5�   ;   .( 5�   6     Checked��.* 5�   :   �� .��5�   >   W� $+ RippleRotateTransform��6N   $, Angle�5�   N   $- 45X�5�   N   $. 0D�5�   N   5�   ;   5�   7     5�   6   	Unchecked��.* 5�   :   �� .��5�   >   W� $+ RippleRotateTransform��6N   $, Angle�5�   N   $- 0X�5�   N   $. 0D�5�   N   5�   ;   5�   7   5�   3   .+�5�   .   �� 7 5�   2     5�   6   8 . 9 . 6Y   .u�5�   2   A� $: border��5�   P   #��z��5�   :   #��z��6^   #��z��6�   ; 5�   P   ��  �� *FindAncestor+$ wpf:PopupBoxL�$$ (wpf:ShadowAssist.ShadowDepth)�#= Z< 5�   3   5�   /     5�   .   #��z��69   #��z��6]   |�.  
 �����}�.  . #��z��5�   9   #��z��5�   9   #��z��5�   9   # z 5�   9   $> .5,.5&�5�   9   ? 5�   9   �� $ GeometryEllipse��$ RenderedGeometry�z�5�   2   �� 5�   6   RippleRotateTransform��$@ 0Q�6e   5�   /   A� 5�   .   $: GeometryEllipse��66   
������ A .  |�.  6{   5�   +   B 5�   *   P� 5�   .   C � {�D .  . �5�   2   �� 	 �@J�Opacity$

 0.23Q�6L   5�   /   P� 5�   .   C �@J�IsMouseOverD . . �5�   2   �� $E border��69   	 �@ Darken
 . 6p   5�   /   �� 5�   .   #G ZF 5�   :   H 5�   :   ��  �� *FindAncestor+$ wpf:PopupBoxL�$ 	PopupMode�.a�5�   2   �� $E RootGrid��69   	 � ��

 ���� 6e   5�   /   �� 5�   .   #G ZI 5�   :   H 5�   :   ��  �� *FindAncestor+$ wpf:PopupBoxL�$ 	PopupMode�.a�5�   2   �� $E RootGrid��69   	 � ��

 ���� 6e   5�   /   5�   '   5�      5�      �� 5�      Open .��5�      W� $+ PART_PopupContentControl��6.   $, Opacity�6_   $- 1X�5�   .   $. 0:0:0.1D�65   6 5�   "     5�   &   $' 	EaseInOut=�6/   5�      W� 5�      $+ ExplicitToggleContent��6.   $, Opacity�6\   $- 0X�5�   .   $. 0:0:0.1D�65   6 5�   "     5�   &   $' 	EaseInOut=�6/   5�      W� 5�      $"+ ExplicitToggleCheckedContent��6.   $, Opacity�6c   $- 1X�5�   .   $. 0:0:0.1D�65   6 5   "     5  &   $' 	EaseInOut=�6/   5     5     �� 5     	Close .��5     W� $+ PART_PopupContentControl��6.   $, Opacity�6_   $. 0:0:0.8D�5  .   6 5  "     5	  &   $' 	EaseInOut=�6/   5     W� 5     $+ ExplicitToggleContent��6.   $, Opacity�6\   $- 1X�5  .   $. 0:0:0.1D�65   6 5  "     5  &   $' 	EaseInOut=�6/   5     W� 5     $"+ ExplicitToggleCheckedContent��6.   $, Opacity�6c   $- 0X�5  .   $. 0:0:0.1D�65   6 5  "     5  &   $' 	EaseInOut=�6/   5     5     5     .R�5     � .+�5     d� $ PART_Toggle��6'   8�� $
 Hand��5  '   #��z��5  '   #��z��5  '   #��z��5  '   $��Stretch=�5   '   $��Stretch=�5!  '   #J zJ 5"  '    5  g   ��  �� *TemplatedParent+$ IsPopupOpen�$ TwoWay=�K 5#  '   ��  �� *FindAncestor+$ wpf:PopupBoxL�$  (ToolTipService.Placement)�.��5%     � .+�5&  "   �� $L StandardToggleContent��61   #��z 6P   #��z 6z   y�5'  1   �� *ToggleCheckedContent+81  �� 5(  "   $L ExplicitToggleContent��61   #��z 6P   #��z 6z   y�5)  1   �� *ToggleCheckedContent+81  �� 5*  "   $"L ExplicitToggleCheckedContent��61   #��zM 6W   #��zN 6�   $0 0Q�5,  1   $> .5,.5&�5-  1   y�5+  1   �� *ToggleCheckedContent+81  z�5.  &   �� 5/  *   $	@ -45Q�6:   51  #   52     53       54     $ 
PART_Popup��6-   ��.  $��Custom=�58  +   $
��None=�59  +    .  56  +   ��  �� *TemplatedParent+$ PopupPlacementMethod� 57  +   �� $ PART_Toggle��.��5;     � .+�5@  "   �� 
�������$0 0.002Q�6<   �� 5A  "   $L PART_PopupContentControl��5D  =   #��z 5A  1   #��z 6Z   $��5q�5C  1   $��8q�6<   $0 0Q�5D  1   y�5B  1   �� *	IsEnabled+81    5E  &   �� 5F  *   �� 5G  .   '_�       " _�64   82  �5H  2   �� 5I  6   	 � ��$
 	16 4 16 4q�6O   5K  /   �� 5L  .   '��       " ��64   82  �5M  2   �� 5N  6   	 �@^�	Placement
 6a   ��  �� *FindAncestor+$ wpf:PopupBoxL�$  (ToolTipService.Placement)��� 5O  6   	 �@^�InitialShowDelay$
 0��6h   �� 5P  6   	 � ��$
 4q�6O   5R  /   5S  +   5U  #   5V     5W     5X     B 5Y     P� 5Z     C �@ IsPopupOpenD . . �5[     �� $E 
PART_Popup��6%   	 � ��
 . 6O   O 5\     �� 5]  "   8�� 62   P 5_     �� 5`  "   8��	 62   5b     P� 5c     C �@ 	PopupMode$D MouseOverEager=�67   . �5d     �� $E 
PART_Popup��6%   	 � ��
 . 6O   5e     5g     5i     �� 5j  
   	 �@ ToggleContent
 5k       5l     $
 Plus=�6   $��24��6+   $��24��66   #���  5m     5o     Q 5p  
   P� 5q     C �@ UnfurlOrientation$D 
Horizontal=�63   . �5r     �� 	 �@^�	Placement$
 Custom=�6=   5s     5u     �� 5w     "  6   82   .�5z  
   �� 	 � ��#
 �  6'   �� 5{  
   	 � ��#
 �  6(   �� 5|  
   	 � ��#
 �  6'   �� 5}  
   	 �@ ToggleContent
 5~       5     $
 Plus=�6   $��24��6+   $��24��66   #���  5�     5�     5�     �� 5�     "  6   82   .�5�  
   �� 	 � ��#
 �  6'   �� 5�  
   	 � ��#
 �  6(   �� 5�  
   	 � ��#
 �  6'   �� 5�  
   	 �@ ToggleContent
 5�       5�     $
 Plus=�6   $��24��6+   $��24��66   #���  5�     5�     5�     �� 5�     "  6   82   .�5�  
   �� 	 � ��#
 �  6'   �� 5�  
   	 � ��#
 �  6(   �� 5�  
   	 � ��#
 �  6'   �� 5�  
   	 �@ ToggleContent
 5�       5�     $
 Plus=�6   $��24��6+   $��24��66   #���  5�     5�     5�     5�     