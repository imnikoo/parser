   M S B A M L   `   `   `  ����W  SMaterialDesignThemes.Wpf, Version=1.2.0.11042, Culture=neutral, PublicKeyToken=nullC&clr-namespace:MaterialDesignThemes.WpfMaterialDesignThemes.Wpf  5      Y1clr-namespace:MaterialDesignThemes.Wpf.Converters#MaterialDesignThemes.Wpf.Converters  5      'clr-namespace:ControlzEx
ControlzEx  5      \ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089  �� MergedDictionaries �� Source$    MaterialDesignThemes.Wpf.Clock �� 
TargetType   MaterialDesignClock �� BasedOn'   !MaterialDesignThemes.Wpf.PopupBox  MaterialDesignPopupBox)   #MaterialDesignThemes.Wpf.TimePicker  MaterialDesignTimePickerM   GMaterialDesignThemes.Wpf.Converters.BrushToRadialGradientBrushConverter ' #BrushToRadialGradientBrushConverter?   9MaterialDesignThemes.Wpf.Converters.DrawerOffsetConverter  DrawerOffsetConverter%   MaterialDesignThemes.Wpf.Ripple �� Property �� Value �� RelativeSource �� Path �� 
TargetType'  !System.Windows.VisualStateManager	   VisualStateGroups%  System.Windows.VisualStateGroup
   Transitions%  System.Windows.VisualTransition   From	   To   
Storyboard �� TargetProperty �� 
TargetName9	  3System.Windows.Media.Animation.EasingDoubleKeyFrame O� KeyTime O� Value 	  EasingFunction-
  'System.Windows.Media.Animation.SineEase7  1System.Windows.Media.Animation.EasingFunctionBase   
EasingMode   States   System.Windows.VisualState   
Storyboard	 W� To J� IsHitTestVisible A�Name   Feedback J� Opacity J� RenderTransformOrigin �� Left
 �� Top �� ScaleX �� ScaleY  �� ContentStringFormat! �� ContentStringFormat"   RecognizesAccessKey# J� SnapsToDevicePixels(   "MaterialDesignThemes.Wpf.Underline  PrimaryHueMidBrush$ � 	Resources/  )System.Windows.Media.Animation.CircleEase  Key% ��Name& g� Duration  UnderlineEasingFunction' W� EasingFunction2   ,MaterialDesignThemes.Wpf.MaterialDateDisplay( �� Orientation) ��Name*   ComponentThreeContent+ ��Name,   ComponentTwoContent-   ComponentOneContent. �� Triggers/ P� Property0 P� Value1 �� 
TargetName9   3MaterialDesignThemes.Wpf.ListSortDirectionIndicator2   GeneratedDuration3   GeneratedEasingFunction.  (System.Windows.Media.Animation.CubicEase4 g� 	BeginTime5 W� From6 F�Name7 �� Stretch(   "MaterialDesignThemes.Wpf.ColorZone  MaterialDesignPaper 	 MaterialDesignBody8 J� 	CacheMode&   System.Windows.Media.BitmapCache9   EnableClearType:   SnapsToDevicePixels;   CornerRadius< �� CornerRadius= J� Effect9   3MaterialDesignThemes.Wpf.Converters.ShadowConverter>   Instance? �� 	Converter@ � CursorA �� Triggers 
 PrimaryHueLightBrush " PrimaryHueLightForegroundBrush   PrimaryHueMidForegroundBrush  PrimaryHueDarkBrush ! PrimaryHueDarkForegroundBrush  SecondaryAccentBrush " SecondaryAccentForegroundBrush ! MaterialDesignLightBackground ! MaterialDesignLightForeground   MaterialDesignDarkBackground   MaterialDesignDarkForeground)   #MaterialDesignThemes.Wpf.DialogHostB �NameC �� ValueD �� KeyTime   ControlzEx.PopupExE  NameF � 	StaysOpenG � AllowsTransparencyH � PlacementTargetI �� ElementNameJ �� ModeK � 	Resources#   MaterialDesignThemes.Wpf.CardL  Name+   %MaterialDesignThemes.Wpf.ShadowAssistM   ShadowDepthN   UniformCornerRadius&   System.Windows.Media.TextOptionsO   TextFormattingModeP   TextRenderingMode  MaterialDesignFontQ   DialogContentR   DialogContentTemplate$S   DialogContentTemplateSelector T   DialogContentStringFormatU ��Name)   #MaterialDesignThemes.Wpf.DrawerHostV T� XW �� AncestorTypeX   LeftDrawerBackgroundY   LeftDrawerContent Z   LeftDrawerContentTemplate$[   LeftDrawerContentStringFormat'   !MaterialDesignThemes.Wpf.PackIcon�� 5      D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    :x,http://schemas.microsoft.com/winfx/2006/xaml     5      0local&clr-namespace:MaterialDesignThemes.Wpf  5      @
converters1clr-namespace:MaterialDesignThemes.Wpf.Converters  5      '
controlzExclr-namespace:ControlzEx  5        5      �� 5   
   $d ^pack://application:,,,/MaterialDesignThemes.Wpf;component/Themes/MaterialDesignTheme.Card.xaml?�6   �� 5   
   $e _pack://application:,,,/MaterialDesignThemes.Wpf;component/Themes/MaterialDesignTheme.Clock.xaml?�6   �� 5   
   $h bpack://application:,,,/MaterialDesignThemes.Wpf;component/Themes/MaterialDesignTheme.PopupBox.xaml?�6   �� 5   
   $i cpack://application:,,,/MaterialDesignThemes.Wpf;component/Themes/MaterialDesignTheme.RatingBar.xaml?�6   �� 5      $j dpack://application:,,,/MaterialDesignThemes.Wpf;component/Themes/MaterialDesignTheme.TimePicker.xaml?�6   �� 5   
   $g apack://application:,,,/MaterialDesignThemes.Wpf;component/Themes/MaterialDesignTheme.Shadows.xaml?�6   �� 5   
   $d ^pack://application:,,,/MaterialDesignThemes.Wpf;component/Themes/MaterialDesignTheme.Font.xaml?�6   %�W  '         7   '  "     7  '  D     7  &	 f     &	 y     '  �     '  ?    7  7  '  �    '  �    '  Q-    '  �3    7  '   E    7  '  �T    �� 5      "   6	   8   6+   �� 5      "  6   8   62   �� 5      "  6	   8   60     5      62     5       6'   �� 5"      "  6   .�5#   
   ��  �@ RecognizesAccessKey . 60   �� 5$   
    � ��$ Stretch=�60   �� 5%   
    � ��$ Stretch=�6.   �� 5&   
    � ��
 ���� 6'   �� 5'   
    � �� .  6&   �� 5(   
    � }� 6)   ��  �� *Self+$' !(local:RippleAssist.ClipToBounds)��� 5)   
    �@ Feedback 6%   ��  �� *Self+$ 
Foreground��� 5*   
    � �� 5+      �� 5,      "  6"   .R�5-      � 
������ 	 5.        5/      CommonStates��
 50   "     51   &   $ Normal��67   $ MousePressed��6E   . 52   *   �� .��53   .   U� $ ScaleX�6L   $ ScaleTransform��6o   .\�54   2   	  $ 0��6G   $ 0Q�6S   	  55   2   $ 0:0:1.2��6G   $ 1Q�6Y    56   6   
  57   :   $ EaseIn=�6C   59   3   5:   /   U� 5;   .   $ ScaleY�6L   $ ScaleTransform��6o   .\�5<   2   	  $ 0��6G   $ 0Q�6S   	  5=   2   $ 0:0:1.2��6G   $ 1Q�6Y    5>   6   
  5?   :   $ EaseIn=�6C   5A   3   5B   /   U� 5C   .   $ Opacity�6L   $ ClickEllipse��6p   .\�5D   2   	  $ 0��6G   $ 0Q�6S   	  5E   2   $ 0:0:0.05��6G   $	 .26Q�6Z   5F   /   5G   +   5H   '     5I   &   $ MousePressed��67   $ MouseOut��6K   . 5J   *   �� .��5K   .   U� $ ScaleX�6L   $ ScaleTransform��6o   .\�5L   2   	  $ 0:0:0.12��6G   $ 0Q�6Z    5M   6   
  5N   :   $ EaseIn=�6C   5P   3   5Q   /   U� 5R   .   $ ScaleY�6L   $ ScaleTransform��6o   .\�5S   2   	  $ 0:0:0.12��6G   $ 0Q�6Z    5T   6   
  5U   :   $ EaseIn=�6C   5W   3   5X   /   U� 5Y   .   $ Opacity�6L   $ ClickEllipse��6p   .\�5Z   2   	  $ 0:0:0.12��6G   $ 0Q�6Z   5[   /   5\   +   5]   '     5^   &   $ MousePressed��67   $ Normal��6K   . 5_   *   �� .��5`   .   U� $ ScaleX�6L   $ ScaleTransform��6o   .\�5a   2   	  $ 0:0:0.30��6G   $ 1Q�6Z   &"MousePressedToNormalScaleXKeyFrame��6d   	  5b   2   $ 0:0:0.50��6G   $ 1Q�6Z   	  5c   2   $ 0:0:0.50��6G   $ 0Q�6Z   5d   /   U� 5e   .   $ ScaleY�6L   $ ScaleTransform��6o   .\�5f   2   	  $ 0:0:0.30��6G   $ 1Q�6Z   &"MousePressedToNormalScaleYKeyFrame��6d   	  5g   2   $ 0:0:0.50��6G   $ 1Q�6Z   	  5h   2   $ 0:0:0.50��6G   $ 0Q�6Z   5i   /   U� 5j   .   $ Opacity�6L   $ ClickEllipse��6p   .\�5k   2   	  $ 0:0:0.05��6G   $	 .26Q�6Z   	  5l   2   $ 0:0:0.30��6G   $	 .26Q�6Z   	  5m   2   $ 0:0:0.50��6G   $ 0Q�6Z    5n   6   
  5o   :   $ EaseOut=�6C   5q   3   5r   -   5s   +   5t   )   . 5v   "     
Normal��. 5w   &   �� .��5x   *   W� $ ScaleX�6:   $ ScaleTransform��6]   $ 0X�6�   W� 5y   *   $ ScaleY�6:   $ ScaleTransform��6]   $ 0X�6�   W� 5z   *   $ Opacity�6:   $ ClickEllipse��6^   $ 0X�6�   5{   '   5|   #     5}   "   MousePressed��. 5~   &   �� .��5   *   W� $ ScaleX�6:   $ ScaleTransform��6]   $ 1X�6�   W� 5�   *   $ ScaleY�6:   $ ScaleTransform��6]   $ 1X�6�   W� 5�   *   $ Opacity�6:   $ ClickEllipse��6^   $
 0.26X�6�   5�   '   5�   #     5�   "   MouseOut��. 5�   &   �� .��5�   *   W� $ ScaleX�6:   $ ScaleTransform��6]   $ 0X�6�   W� 5�   *   $ ScaleY�6:   $ ScaleTransform��6]   $ 0X�6�   W� 5�   *   $ Opacity�6:   $ ClickEllipse��6^   $ 0X�6�   5�   '   5�   #   5�      .+�5�      ��  .  $��Stretch=�6:   $��Stretch=�6X   .+�5�      A� $ ClickEllipse��6&   #��z 6<   $ 0Q�6^   $ .5,.5&�5�   &   ��5�   &   ��  �� *TemplatedParent+$ 
RippleSize���5�   &   ��  �� *TemplatedParent+$ 
RippleSize� 5�   &   ��  �� *TemplatedParent+$ RippleX� 5�   &   ��  �� *TemplatedParent+$ RippleY�z�5�   "   V� 5�   &   .~�5�   *   �� ScaleTransform��$ 0Q�6Q   $ 0Q�6\   �� 5�   *   �� 5�   *   T� 5�   *   TranslateTransform��6=   5�   '   5�      5�      �� 5�      #��z��6+   #! z  5�   +   #��z��5�   +   #��z��5�   +   #��z��5�   +   #��z��5�   +   #��z��5�   +   #��z" 5�   +   ## z# 5�   +   5�      5�      5�      5�      �� 5�      "  6   .�5�   
   ��  � ��# �  6'   �� 5�   
    �@J�SnapsToDevicePixels . 60   �� 5�   
    � ��$ Stretch=�60   �� 5�   
    � ��$ Bottom=�6.   �� 5�   
    � ��$ 2��6#   �� 5�   
    � �� .  6&   �� 5�   
    � �� 5�      �� 5�      $ 5�      ��  5�      UnderlineEasingFunction $ EaseOut=�6E   5�      .R�5�      �� $% UnderlineBorder��6   #��z��5�       .  #��z��5�      #��z��5�      #��z��5�      ## z# 5�      $ 0.5,0.5&�5�      	 5�        5�      ActivationStates��
 5�   "     5�   &   $ Inactive��67   $ Active��6G   . 5�   *   �� .��5�   .   W� $ ScaleTransform��6>   $ ScaleX�5�   >   $& 0:0:0.3D�5�   >   8'   $ 1X�5�   >   5�   +   5�   '     5�   &   $ Active��67   $ Inactive��6E   . 5�   *   �� .��5�   .   W� $ ScaleTransform��6>   $ ScaleX�5�   >   $& 0:0:0.3D�5�   >   8'  $ 0X�5�   >   5�   +   5�   '   . 5�   "     
Active��. 5�   &   �� .��5�   *   W� $ ScaleTransform��6:   $ ScaleX�5�   :   $& 0D�5�   :   $ 1X�5�   :   5�   '   5�   #     5�   "   Inactive��. 5�   &   �� .��5�   *   W� $ ScaleTransform��6:   $ ScaleX�5�   :   $& 0D�5�   :   $ 0X�5�   :   5�   '   5�   #   5�      z�5�      �� 5�      $ 0Q�6-   $ 1Q�68   ScaleTransform��6C   5�      5�      5�      5�      �� 5�      "  6   .�5�   
   ��  � ��
 ���� 6'   �� 5�   
    � �� 5�      �� 5�      "  6"   .R�5�      �� #��z��6   #��z��5�      #��z��5�      ._�5�      �� $( Vertical=�6%   $��0q�5�   %   .+�5�      �� $) ComponentThreeTextBlock��6(   #��z* 5�   (   $
��Left=�5   (   $��15(�5  (   $��Normal"�66   �� 5     $+ ComponentOneTwoWrapper��6)   $( 
Horizontal=�6I   $
��Left=�5  )   .+�5  "   �� #��z, 6,   $��30(�6Y   $��Normal"�6g   �� 5  "   #��z- 6,   $��10 0 0 0q�6Y   $��30(�6k   $��Normal"�6y   5     5     5     . 5	     P� 5
     / �@ IsDayInFirstComponent0 . . �5     �� $1 ComponentThreeTextBlock��6%    �@J�Opacity$	 .56Q�6]   5     P� 5     / � {�0 .  . �5     �� $1 ComponentThreeTextBlock��6%    �@J�Opacity$ 1Q�6]   �� 5     $1 ComponentOneTwoWrapper��6%    �@J�Opacity$	 .56Q�6\   5     5     5     5     �� 5     "  6   .�5  
   ��  � �� 5     �� 5     "  6"   .R�5     (� $��0,0,0,0q�6   	 5       5     	Direction��
 5  "     5  &   $
 None��67   $2 0D�6C   $ 	Ascending��6Y   3 5   *     5!  .   $ EaseOut=�68   . 5#  *   �� .��5$  .   W� $& 0:0:0.2D�6>   $ 1X�6Q   $V P(UIElement.RenderTransform).(TransformGroup.Children)[0].(ScaleTransform.ScaleY)�6X   $
 path��6�   W� 5%  .   $& 0:0:0.2D�6>   $ 90X�6Q   $V P(UIElement.RenderTransform).(TransformGroup.Children)[2].(RotateTransform.Angle)�6Y   $
 path��6�   $4 0:0:0.2X�6�   5&  +   5'  '     5(  &   $
 None��67   $2 0D�6C   $ 
Descending��6Y   3 5)  *     5*  .   $ EaseOut=�68   . 5,  *   �� .��5-  .   W� $& 0:0:0.2D�6>   $ 1X�6Q   $V P(UIElement.RenderTransform).(TransformGroup.Children)[0].(ScaleTransform.ScaleY)�6X   $
 path��6�   W� 5.  .   $& 0:0:0.2D�6>   $	 -90X�6Q   $V P(UIElement.RenderTransform).(TransformGroup.Children)[2].(RotateTransform.Angle)�6Z   $
 path��6�   $4 0:0:0.2X�6�   ' 5/  2     50  6   $ EaseOut=�6@   52  /   53  +   54  '     55  &   $ 	Ascending��67   $2 0D�6H   $ 
Descending��6^   3 56  *     57  .   $ EaseOut=�68   . 59  *   �� .��5:  .   W� $& 0D�6>   $ 1X�6K   $V P(UIElement.RenderTransform).(TransformGroup.Children)[0].(ScaleTransform.ScaleY)�6R   $
 path��6�   ' 5;  2     5<  6   $ EaseOut=�6@   5>  /   W� 5?  .   $& 0:0:0.2D�6>   $	 -90X�6Q   $V P(UIElement.RenderTransform).(TransformGroup.Children)[2].(RotateTransform.Angle)�6Z   $
 path��6�   $5 90X�6�   5@  +   5A  '     5B  &   $ 	Ascending��67   $2 0D�6H   $
 None��6^   3 5C  *     5D  .   $ EaseOut=�68   . 5F  *   �� .��5G  .   W� $& 0:0:0.2D�6>   $ 0X�6Q   $V P(UIElement.RenderTransform).(TransformGroup.Children)[0].(ScaleTransform.ScaleY)�6X   $
 path��6�   W� 5H  .   $& 0D�6>   $ 90X�6K   $V P(UIElement.RenderTransform).(TransformGroup.Children)[2].(RotateTransform.Angle)�6S   $
 path��6�   U� 5I  .   $V P(UIElement.RenderTransform).(TransformGroup.Children)[0].(ScaleTransform.ScaleX)�6L   $
 path��6�   .\�5J  2   	  $ 0��6G   $ 1Q�6S   	  5K  2   $ 0:0:0.2��6G   $ 0Q�6Y   5L  /   5M  +   5N  '     5O  &   $ 
Descending��67   $2 0D�6I   $ 	Ascending��6_   . 5P  *   �� .��5Q  .   W� $& 0:0:0.2D�6>   $ 90X�6Q   $V P(UIElement.RenderTransform).(TransformGroup.Children)[2].(RotateTransform.Angle)�6Y   $
 path��6�   $	5 -90X�6�   5R  +   5S  '     5T  &   $ 
Descending��67   $2 0D�6I   $
 None��6_   . 5U  *   �� .��5V  .   W� $& 0D�6>   $	 -90X�6K   $V P(UIElement.RenderTransform).(TransformGroup.Children)[2].(RotateTransform.Angle)�6T   $
 path��6�   W� 5W  .   $& 0:0:0.2D�6>   $ 0X�6Q   $V P(UIElement.RenderTransform).(TransformGroup.Children)[0].(ScaleTransform.ScaleY)�6X   $
 path��6�   U� 5X  .   $V P(UIElement.RenderTransform).(TransformGroup.Children)[0].(ScaleTransform.ScaleX)�6L   $
 path��6�   .\�5Y  2   	  $ 0��6G   $ 1Q�6S   	  5Z  2   $ 0:0:0.2��6G   $ 0Q�6Y   5[  /   5\  +   5]  '   . 5_  "     None��. 5`  &   �� .��5a  *   U� $V P(UIElement.RenderTransform).(TransformGroup.Children)[0].(ScaleTransform.ScaleY)�6H   $
 path��6�   .\�5b  .   	  $ 0��6C   $ 0Q�6O   5c  +   5d  '   5e  #     5f  "   	Ascending��. 5g  &   �� .��5h  *   U� $V P(UIElement.RenderTransform).(TransformGroup.Children)[0].(ScaleTransform.ScaleY)�6H   $
 path��6�   .\�5i  .   	  $ 0��6C   $ 1Q�6O   5j  +   U� 5k  *   $V P(UIElement.RenderTransform).(TransformGroup.Children)[2].(RotateTransform.Angle)�6H   $
 path��6�   .\�5l  .   	  $ 0��6C   $ 90Q�6O   5m  +   5n  '   5o  #     5p  "   
Descending��. 5q  &   �� .��5r  *   U� $V P(UIElement.RenderTransform).(TransformGroup.Children)[2].(RotateTransform.Angle)�6H   $
 path��6�   .\�5s  .   	  $ 0��6C   $	 -90Q�6O   5t  +   U� 5u  *   $V P(UIElement.RenderTransform).(TransformGroup.Children)[0].(ScaleTransform.ScaleY)�6H   $
 path��6�   .\�5v  .   	  $ 0��6C   $ 1Q�6O   5w  +   5x  '   5y  #   5z     .��5|     F� $
6 path��6   a���� 	= �ا � 	= @]� � $� @]� Ѡ7� �Iр� ��/� �. � р� �A> Ѡ7� `�S � $� �ا � 	= �ا 	#��z��6|   $ 0.5,0.5&�5}     $��24��6<   $
7 Fill=�6H   $��24��6W   z�5~     V� 5  "   .~�5�  &   �� $ 0Q�65   �� 5�  &   �� 5�  &   T� 5�  &   5�  #   5�     5�     5�     5�     5�     �� 5�     "  6   .�5�  
   ��  � ��# �  6'   �� 5�  
    � ��# � 	 6'   �� 5�  
    � ��$ Stretch=�67   �� 5�  
    � ��$	 Top=�6.   �� 5�  
    � �� .  6&   �� 5�  
    � �� 5�     �� 5�     "  6"   .R�5�     � 
������ .+�5�     �� 8 5�       5�  "   9 . : . 6E   .u�5�     �� #��z��6%   #< z; 5�  %   = 5�  %   ��  �� *TemplatedParent+$&  (local:ShadowAssist.ShadowDepth)�#? Z> 5�     5�     �� 5�     #��z��6!   #��z��5�  !   #��z��5�  !   #< z; 5�  !   }�. ._�5�     �� #��z��6/   #��z��5�  /   #��z��5�  /   ��. #@ z@ 5�  /   #��z��5�  /   #��z��5�  /   #��z��5�  /   5�     5�     5�     5�     A 5�  
   P� 5�     / �@ Mode$0 Inverted=�6&   . �5�     ��  � ��# � 	 6/   �� 5�      � ��# �  6/   5�     P� 5�     / �@ Mode$0 PrimaryLight=�6&   . �5�     ��  � ��# � 
 6/   �� 5�      � ��# �  6/   5�     P� 5�     / �@ Mode$0 
PrimaryMid=�6&   . �5�     ��  � ��# �  6/   �� 5�      � ��# �  6/   5�     P� 5�     / �@ Mode$0 PrimaryDark=�6&   . �5�     ��  � ��# �  6/   �� 5�      � ��# �  6/   5�     P� 5�     / �@ Mode$0 Accent=�6&   . �5�     ��  � ��# �  6/   �� 5�      � ��# �  6/   5�     P� 5�     / �@ Mode$0 Light=�6&   . �5�     ��  � ��# �  6/   �� 5�      � ��# �  6/   5�     P� 5�     / �@ Mode$
0 Dark=�6&   . �5�     ��  � ��# �  6/   �� 5�      � ��# �  6/   5�     5�     �� 5�     "  6   .�5�  
   ��  � �� 5�     �� 5�     "  6"   .R�5�     � $B DialogHostRoot��6   |�.  	 5�       5�     PopupStates��
 5�  "     5�  &   $ Closed��67   $
 Open��6E   . 5�  *   �� .��5�  .   �� $ 
PART_Popup��6M   $ IsOpen�6p   .p�5�  2   s� C . $D 0��6W   5�  /   U� 5�  .   $ ContentGrid��6L   $ Opacity�6p   .\�5�  2   	  $ 0Q�6G   $ 0��6Q   	  5�  2   $
 0.56Q�6G   $ 0:0:0.3��6T    5�  6   
  5�  :   $ 	EaseInOut=�6C   5�  3   5�  /   U� 5�  .   $ PART_PopupContentElement��6L   $ Opacity�6}   .\�5�  2   	  $ 0Q�6G   $ 0��6Q   	  5�  2   $ 1Q�6G   $ 0:0:0.3��6Q    5�  6   
  5�  :   $ 	EaseInOut=�6C   5�  3   5�  /   U� 5�  .   $ CardScaleTransform��6L   $ ScaleX�6w   .\�5�  2   	  $ 0Q�6G   $ 0��6Q   	  5�  2   $ 1Q�6G   $ 0:0:0.3��6Q    5�  6   
  5�  :   $ 	EaseInOut=�6C   5�  3   5�  /   U� 5�  .   $ CardScaleTransform��6L   $ ScaleY�6w   .\�5�  2   	  $ 0Q�6G   $ 0��6Q   	  5�  2   $ 1Q�6G   $ 0:0:0.3��6Q    5�  6   
  5�  :   $ 	EaseInOut=�6C   5�  3   5�  /   5�  +   5   '     5  &   $
 Open��67   $ Closed��6C   . 5  *   �� .��5  .   �� $ 
PART_Popup��6M   $ IsOpen�6p   .p�5  2   s� C . $D 0:0:0��6W   s� 5  2   C . $D 0:0:0.3��6W   5  /   U� 5  .   $ ContentGrid��6L   $ Opacity�6p   .\�5  2   	  $
 0.56Q�6G   $ 0��6T   	  5	  2   $ 0Q�6G   $ 0:0:0.3��6Q    5
  6   
  5  :   $ 	EaseInOut=�6C   5  3   5  /   U� 5  .   $ PART_PopupContentElement��6L   $ Opacity�6}   .\�5  2   	  $ 1Q�6G   $ 0��6Q   	  5  2   $ 1Q�6G   $ 0:0:0.18��6Q   	  5  2   $ 0Q�6G   $ 0:0:0.3��6Q    5  6   
  5  :   $ 	EaseInOut=�6C   5  3   5  /   U� 5  .   $ CardScaleTransform��6L   $ ScaleX�6w   .\�5  2   	  $ 1Q�6G   $ 0��6Q   	  5  2   $ 1Q�6G   $ 0:0:0.18��6Q   	  5  2   $	 0.5Q�6G   $ 0:0:0.3��6S    5  6   
  5  :   $ 	EaseInOut=�6C   5  3   5   /   U� 5!  .   $ CardScaleTransform��6L   $ ScaleY�6w   .\�5"  2   	  $ 1Q�6G   $ 0��6Q   	  5#  2   $ 1Q�6G   $ 0:0:0.18��6Q   	  5$  2   $	 0.5Q�6G   $ 0:0:0.3��6S    5%  6   
  5&  :   $ 	EaseInOut=�6C   5(  3   5)  /   5*  +   5+  '   . 5-  "     Open��. 5.  &   �� .��5/  *   �� $ 
PART_Popup��6I   $ IsOpen�6l   .p�50  .   s� C . $D 0��6S   51  +   W� 52  *   $ ContentGrid��6:   $ Opacity�6^   $& 0D�53  :   $	 .56X�54  :   W� 55  *   $ PART_PopupContentElement��6:   $ Opacity�6k   $& 0D�56  :   $ 1X�57  :   W� 58  *   $ CardScaleTransform��6:   $ ScaleX�6e   $& 0D�59  :   $ 1X�5:  :   W� 5;  *   $ CardScaleTransform��6:   $ ScaleY�6e   $& 0D�5<  :   $ 1X�5=  :   5>  '   5?  #     5@  "   
Closed��. 5A  &   �� .��5B  *   �� $ 
PART_Popup��6I   $ IsOpen�6l   .p�5C  .   s� C . $D 0:0:0��6S   s� 5D  .   C .  $D 0:0:0.3��6T   5E  +   5F  '   5G  #   5H     .+�5J       $E 
PART_Popup��5O  +   ��.  F . G . $
��None=�5N  +   $��Center=�5P  +   H 5K  +   �� $I DialogHostRoot��$J OneWay=�K 5Q     �� 5R  "     5S  &   �� 5T  *   $e _pack://application:,,,/MaterialDesignThemes.Wpf;component/Themes/MaterialDesignTheme.Light.xaml?�6=   5V  #   .��5X       $L PART_PopupContentElement��6)   $��22q�5Y  )   $M Depth5=�5Z  )   $N 4Q�5[  )   #��� 	 5\  )   $��Regular"�5]  )   $��13(�5^  )   $O Ideal=�5_  )   $
P Auto=�5`  )   #��� 	 5a  )   8��  ��.  $ 0Q�5d  )   $ .5,.5&�5e  )   #��zQ 5f  )   #��zR 5g  )   #��zS 5h  )   #  zT 5i  )   z�5j  "   V� 5k  &   .~�5l  *   �� CardScaleTransform��$ 0Q�5m  9   $ 0Q�5n  9   5o  '   5q     5r     �� 5s     .u�5t     �� $U ContentPresenter��5u  %   $ 1Q�6?   #��z��5v  %   #��z��6X   #! z  6�   5w     � 5x     $B ContentGrid��6   
���   �$ 0Q�6G    .  |�.  6l   5y     . 5z     P� 5{     / �@ IsOpen0 . . �5|     �� $1 ContentPresenter��6%    � {� .  6X   5}     5     5�     5�     �� 5�     "  6   .�5�  
   ��  �@ ShadowDepth$ Depth3=�6;   �� 5�  
    �@ LeftDrawerBackground# �  61   �� 5�  
    � �� .  6&   �� 5�  
    � �� 5�     �� 5�     "  6"   .R�5�     � 	 5�       5�     
AllDrawers��
 5�  "     5�  &   $ 	AllClosed��67   $ AnyOpen��6H   . 5�  *   �� .��5�  .   �� $ PART_ContentCover��6M   $ IsHitTestVisible�6w   .p�5�  2   s� C . $D 0��6W   5�  /   �� 5�  .   $ ContentPresenter��6M   $ 	IsEnabled�6v   .p�5�  2   s� C .  $D 0��6X   5�  /   U� 5�  .   $ PART_ContentCover��6L   $ Opacity�6v   .\�5�  2   	  $ 0Q�6G   $ 0��6Q   	  5�  2   $	 .56Q�6G   $ 0:0:0.3��6S    5�  6   
  5�  :   $ EaseOut=�6C   5�  3   5�  /   5�  +   5�  '     5�  &   $ AnyOpen��67   $ 	AllClosed��6F   . 5�  *   �� .��5�  .   U� $ PART_ContentCover��6L   $ Opacity�6v   .\�5�  2   	  $
 0.56Q�6G   $ 0��6T   	  5�  2   $ 0Q�6G   $ 0:0:0.3��6Q    5�  6   
  5�  :   $ 	EaseInOut=�6C   5�  3   5�  /   5�  +   5�  '   . 5�  "     AnyOpen��. 5�  &   �� .��5�  *   W� $ PART_ContentCover��6:   $ Opacity�6d   $	 .56X�5�  :   $& 0D�6C   �� 5�  *   $ PART_ContentCover��6I   $ IsHitTestVisible�6s   .p�5�  .   s� C . $D 0��6S   5�  +   �� 5�  *   $ ContentPresenter��6I   $ 	IsEnabled�6r   .p�5�  .   s� C .  $D 0��6T   5�  +   5�  '   5�  #     5�  "   	AllClosed��. 5�  &   �� .��5�  *   W� $ PART_ContentCover��6:   $ Opacity�6d   $ 0X�5�  :   �� 5�  *   $ PART_ContentCover��6I   $ IsHitTestVisible�6s   .p�5�  .   s� C .  6F   5�  +   5�  '   5�  #   5�       5�     
LeftDrawer��
 5�  "     5�  &   $ LeftDrawerClosed��67   $ LeftDrawerOpen��6O   . 5�  *   �� .��5�  .   U� $ X�6L   $" LeftDrawerTranslateTransform��6j   .\�5�  2   	  $ 0Q�6G   $ 0:0:0.4��6Q    5�  6   
  5�  :   $ EaseOut=�6C   5�  3   5�  /   W� 5�  .   $ LeftDrawerShadow��6>   $ Opacity�6g   $5 0X�6�   $ 1X�6�   $& 0:0:0.04D�6�   5�  +   5�  '     5�  &   $ LeftDrawerOpen��67   $ LeftDrawerClosed��6M   . 5�  *   �� .��5�  .   W� $ X�6>   $" LeftDrawerTranslateTransform��6\   $& 0:0:0.4D�6�   ' 5�  2   
  5�  6   $ EaseOut=�6?   5�  /   U� 5�  .   $ LeftDrawerShadow��6L   $ Opacity�6u   .\�5�  2   	  $ 1Q�6G   $ 0:0:0.36��6Q   	  5�  2   $ 0Q�6G   $ 0:0:0.4��6Q    5�  6   
  5�  :   $ EaseOut=�6C   5�  3   5�  /   5�  +   5�  '   . 5�  "     LeftDrawerOpen��. 5�  &   �� .��5�  *   W� $ LeftDrawerShadow��6:   $ Opacity�6c   $5 0X�6�   $ 1X�6�   $& 0D�6�   W� 5�  *   $ X�6:   $" LeftDrawerTranslateTransform��6X   $ 0X�6�   $& 0D�6�   5�  '   5�  #     5�  "   LeftDrawerClosed��. 5�  &   �� .��5�  *   W� $ LeftDrawerShadow��6:   $ Opacity�6c   $5 0X�6�   $ 0X�6�   $& 0D�6�   W� 5�  *   $ X�6:   $" LeftDrawerTranslateTransform��6X   $& 0D�6�   5�  '   5�  #   5�     .+�5�     �� .u�5�     �� $U ContentPresenter��5�  %   $ 1Q�6?   #��z��5�  %   #��z��6I   #! z  6}   5�     � 5�     $B PART_ContentCover��6   
���   �$ 0Q�6M    .  |�.  6r   � 5�     $
��Left=�6   $��Stretch=�6:   z�5�     T� 5�  "    LeftDrawerTranslateTransform��V 5�  5   ��  �� *FindAncestor+$
W GridL�$ ActualWidth�8?   .+�5�     �� 8 5�  "     5�  &   9 . : . 6I   .u�5  "   �� $% LeftDrawerShadow��5  )   $ 0Q�5  )   #��zX 5  )   = 5  )   ��  �� *TemplatedParent+$&  (local:ShadowAssist.ShadowDepth)�#? Z> 5  #   5     �� 5     #��zY 6/   #��zZ 6]   #! z[ 6�   5	     5
     5     5     5     �� 5     "  6   .�5  
   ��  � ��$ 16��6#   �� 5  
    � ��$ 16��6"   �� 5  
    � ��$
 Left=�60   �� 5  
    � ��$	 Top=�6.   �� 5  
    � �� .  6&   �� 5  
    � ��$ LeftToRight=�6*   �� 5  
    � �� 5     �� 5     "  6"   .R�5     �� #��z��6   #��z��5     #��z��5     ._�5     (� #��z��6"   .��5     �� $��24��6%   $��24��60   .+�5  "   F� #��z��5   '   ��5  '   �� *Data+ �� *TemplatedParent+5   '   5!     5"     5#     5$     5&     5'     5)     