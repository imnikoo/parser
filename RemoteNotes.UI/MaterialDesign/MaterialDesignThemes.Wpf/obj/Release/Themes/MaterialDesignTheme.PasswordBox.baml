   M S B A M L   `   `   `  ���� W  SMaterialDesignThemes.Wpf, Version=1.2.0.42456, Culture=neutral, PublicKeyToken=nullC&clr-namespace:MaterialDesignThemes.WpfMaterialDesignThemes.Wpf  \ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089  �� MergedDictionaries �� Source   MaterialDesignPasswordBox �� 
TargetType �� Property �� Value �� RelativeSource �� AncestorType �� Path  MaterialDesignTextBoxBorder.    (MaterialDesignThemes.Wpf.TextFieldAssist-  'System.Windows.Input.KeyboardNavigation2   ,MaterialDesignThemes.Wpf.PasswordFieldAssist ) %MaterialDesignValidationErrorTemplate �� 
TargetType	 ��Name
 J� SnapsToDevicePixels �� Padding ��Name ��Name J� IsHitTestVisible �� Mode J� Opacity(   "MaterialDesignThemes.Wpf.Underline  Name �� Triggers P� Property P� Value �� 
TargetName  PrimaryHueMidBrush  ValidationErrorBrush �� Triggers ]� 
Conditions �� Property �� Value ) %MaterialDesignFloatingHintPasswordBox �� BasedOn'  !System.Windows.VisualStateManager   VisualStateGroups%  System.Windows.VisualStateGroup   Transitions%  System.Windows.VisualTransition   From	   To   
Storyboard  �� TargetProperty! �� 
TargetName" g� Duration	# W� To$ W� EasingFunction-  'System.Windows.Media.Animation.SineEase7  1System.Windows.Media.Animation.EasingFunctionBase%   
EasingMode	& t� To' t� EasingFunction(   States 	  System.Windows.VisualState) 	  
Storyboard* � UseLayoutRounding�� D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    :x,http://schemas.microsoft.com/winfx/2006/xaml     .wpf&clr-namespace:MaterialDesignThemes.Wpf    �� $6 0MaterialDesignTheme.ValidationErrorTemplate.xaml?�%�  &	        7  &	 �    7   �� " G�.���  � �� ��  �� " �$ (TextElement.Foreground)���  � �� ��  �� " �$ (TextElement.FontFamily)���  � ��# �  ��  �@G�PasswordChar$	 ●����  � ��$ 0 0 0 1q���  �@  TextBoxViewMargin$ 1 0 1 0q���  � ��
 ���� ��  �@G�
CaretBrush ��  �� *Self+$ BorderBrush���  �@ TabNavigation$
 None=���  � ��$ Stretch=���  � ��$ Stretch=���  �@�FocusVisualStyle Z� ��  �@J�	AllowDrop . ��  �@��PanningMode$ VerticalFirst=���  �@��IsFlicksEnabled .  ��  �@ Managed ��  �� *Self+��  �@=�ErrorTemplate8   ��  � �� �� " G�.R�� .+��� $	 border��#��z��#��z��#��z��
 . $ 0 4 0 4q�._�� #��z��#��z��#��z��.+��� $ PART_ContentHost��|�.  $��Hidden=�$��Hidden=��� $
 Hint�� .  $��1 0 1 0q����� $  (wpf:TextFieldAssist.Hint)� �� *TemplatedParent+y��� $. ((wpf:PasswordFieldAssist.HintVisibility)� �� *TemplatedParent+$ OneWay=� �� $' !(wpf:TextFieldAssist.HintOpacity)� �� *TemplatedParent+  $ 	Underline��y��� $0 *(wpf:TextFieldAssist.DecorationVisibility)� �� *TemplatedParent+ P�  � {� .  . ��� $ border�� �@J�Opacity$
 0.56Q�P�  �@J�IsMouseOver . . ��� # �   � ��P�  �@J�IsKeyboardFocused . . ��� $ 	Underline�� �@ IsActive . P�  �@=�HasError . . ��� # �   � ���� $ 	Underline��# �   � �� ]�  �� + �@G�#IsInactiveSelectionHighlightEnabled . ��  �@G�IsSelectionActive .  ./���  �@G�SelectionBrush# � /��� " G�8   .���  � �� �� " G�.R��    MaterialDesignStates��   $ *��$% MaterialDesignStateTextNotEmpty��. �� .��W� $  FontSize�$
! Hint��$" 0:0:0.3D�$# 10X�$   $% EaseOut=�W� $  Opacity�$
! Hint��$" 0:0:0.3D�$# 1X�$   $% EaseOut=�t� $  (FrameworkElement.Margin)�$
! Hint��$" 0:0:0.3D�$& 	1,-16,1,0X�'   $% EaseOut=�  $ *��$" MaterialDesignStateTextEmpty��. �� .��W� $  FontSize�$
! Hint��$" 0:0:0.3D�$   $% EaseOut=�W� $  Opacity�$
! Hint��$" 0:0:0.3D�$   $% EaseOut=�t� $  (FrameworkElement.Margin)�$
! Hint��$" 0:0:0.3D�'   $% EaseOut=�.( 	  #MaterialDesignStateTextNotEmpty��.) �� .��W� $  FontSize�$
! Hint��$" 0D�$# 10X�W� $  Opacity�$
! Hint��$" 0D�$# 1X�t� $  (FrameworkElement.Margin)�$
! Hint��$" 0D�$& 	1,-16,1,0X�	   MaterialDesignStateTextEmpty��.) �� .��W� $  FontSize�$
! Hint��$" 0D�W� $  Opacity�$
! Hint��$" 0D�t� $  (FrameworkElement.Margin)�$
! Hint��$" 0D�.+��� $	 border��#��z��#��z��#��z��
 . $ 0 4 0 4q�._�� $��0 12 0 0q�#��z��#��z��.+��� $ PART_ContentHost��|�.  $��Hidden=�$��Hidden=�#
 z
 #* z* �� $
 Hint�� .  #��z��$
��Left=�$	��Top=�$��1 0 1 0q����� $  (wpf:TextFieldAssist.Hint)� �� *TemplatedParent+ �� $' !(wpf:TextFieldAssist.HintOpacity)� �� *TemplatedParent+  $ 	Underline��y��� $0 *(wpf:TextFieldAssist.DecorationVisibility)� �� *TemplatedParent+ ]�  ��  �@ IsNullOrEmpty .  ��  �@J�IsKeyboardFocused . ./��� $
 Hint��# �   � ��P�  � {� .  . ��� $ border�� �@J�Opacity$
 0.56Q�P�  �@J�IsMouseOver . . ��� # �   � ��P�  �@J�IsKeyboardFocused . . ��� $ 	Underline�� �@ IsActive . P�  �@=�HasError . . ��� # �   � ���� $ 	Underline��# �   � ��