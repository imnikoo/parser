   M S B A M L   `   `   `  ���� W  SMaterialDesignThemes.Wpf, Version=1.2.0.42456, Culture=neutral, PublicKeyToken=nullC&clr-namespace:MaterialDesignThemes.WpfMaterialDesignThemes.Wpf  Y1clr-namespace:MaterialDesignThemes.Wpf.Converters#MaterialDesignThemes.Wpf.Converters  \ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089  �� MergedDictionaries �� Source=    7MaterialDesignThemes.Wpf.Converters.BrushRoundConverter   Key  FocusVisual �� Property �� Value J� SnapsToDevicePixels �� StrokeDashArray  MaterialDesignListBoxItem �� 
TargetType �� RelativeSource �� AncestorType	 �� 
TargetType'  !System.Windows.VisualStateManager
   VisualStateGroups%  System.Windows.VisualStateGroup   Name   Transitions%  System.Windows.VisualTransition   GeneratedDuration	   To   GeneratedEasingFunction/  )System.Windows.Media.Animation.CircleEase7  1System.Windows.Media.Animation.EasingFunctionBase   
EasingMode   States   System.Windows.VisualState   Name   
Storyboard �� 
TargetName �� TargetProperty	 W� To g� Duration ��Name J� Opacity  BrushRoundConverter �� 	Converter J� RenderTransformOrigin �� ScaleX%   MaterialDesignThemes.Wpf.Ripple   Feedback " MaterialDesignCardsListBoxItem#   MaterialDesignThemes.Wpf.Card �� ContentStringFormat  MaterialDesignListBox  MaterialDesignBody �� Triggers  ]� 
Conditions! �� Property" �� Value  MaterialDesignCardsListBox# �� BasedOn�� D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    :x,http://schemas.microsoft.com/winfx/2006/xaml     .wpf&clr-namespace:MaterialDesignThemes.Wpf  @
converters1clr-namespace:MaterialDesignThemes.Wpf.Converters    �� $g apack://application:,,,/MaterialDesignThemes.Wpf;component/Themes/MaterialDesignTheme.Shadows.xaml?���    BrushRoundConverter  %  &	       &	 N     7  7  7  &	     7  &	 �    7  &	 �    7  7  �� .���  � �� �� .R��� $��2q� . #��� ��$��1��$	 1 2R��� " ��.���  � ��
 ���� ��  � ��$ 0q���  � �� �� *HorizontalContentAlignment+ �� " ����  � �� �� *VerticalContentAlignment+ �� " ����  � ��$ 8q���  �@J�SnapsToDevicePixels . ��  � �� �� "	 ��.R��� #��z��#��z��#��z��#��z��#}�z}�
   $ CommonStates��   $ 0:0:0.3D�$ Normal��   $ EaseOut=�.   $ Normal��  $ 	MouseOver��. �� .��W� $ MouseOverBorder��$ Opacity�$	 0.1X�$ 0D�  $ Disabled��  $ SelectionStates��   $ 0:0:0.6D�.   $ Selected��. �� .��W� $ SelectedBorder��$ Opacity�$
 0.18X�$ 0D�  $ 
Unselected��._�� .+��� $ MouseOverBorder��$ 0Q����� *
Foreground+8   �� $ SelectedBorder��$ 0Q�$ 0.5,0.5&����� *
Foreground+8  z��� $ 1Q�  |�.  #��z��#��z��#��z��# z #��z��#��z��#��z�� �� *
Foreground+8  �� " ��.���  �@J�SnapsToDevicePixels . ��  � ��$ 0q���  � ��$ 0 0 8 8q���  � �� �� *HorizontalContentAlignment+ �� " ����  � �� �� *VerticalContentAlignment+ �� " ����  � ��
 �������  � ��
 ���� ��  � ��$ 1q���  �@�FocusVisualStyle8   ��  � �� �� "	 ��.R�  #��z��#��z��# z #��z���� " ��.���  � ��
 ���� ��  � ��
 ���� ��  � ��$ 0q���  � ��# �  ��  � ��$ Disabled=���  � ��$
 Auto=���  � �� . ��  �@��PanningMode$
 Both=���  �@��IsFlicksEnabled .  ��  � ��$ Center=���  � ��8   ��  � �� �� "	 ��.R��� $ Bd��#��z��#��z��#��z�� . ._��� |�.  #��z��.���� # z  ]�   �� ! �@��
IsGrouping" . �� "! �@%�IsVirtualizingWhenGrouping" .  ./���  � �� .  �� " ��8#   .���  � ��8  