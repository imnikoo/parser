   M S B A M L   `   `   `  ����W  SMaterialDesignThemes.Wpf, Version=1.2.0.11042, Culture=neutral, PublicKeyToken=nullC&clr-namespace:MaterialDesignThemes.WpfMaterialDesignThemes.Wpf  5      Y1clr-namespace:MaterialDesignThemes.Wpf.Converters#MaterialDesignThemes.Wpf.Converters  5      \ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089  �� MergedDictionaries �� Source    BooleanToVisibilityConverterF    @MaterialDesignThemes.Wpf.Converters.NotZeroToVisibilityConverter   NotZeroToVisibilityConverter - )MaterialDesignDataGridCheckBoxColumnStyle �� 
TargetType  MaterialDesignCheckBox �� BasedOn �� Property �� Value 4 0MaterialDesignDataGridCheckBoxColumnEditingStyle " MaterialDesignDataGridComboBox �� TypeInTargetAssembly �� 
ResourceId 0 ,MaterialDesignDataGridTextColumnEditingStyle  MaterialDesignTextBox  PrimaryHueMidBrush �� 
TargetType	 ��Name
 J� SnapsToDevicePixels �� Padding ��Name ��Name �� Path �� RelativeSource $	  TextFieldHintVisibilityConverter �� 	Converter J� Opacity 5
 1MaterialDesignDataGridTextColumnPopupEditingStyle � AllowsTransparency � HorizontalOffset � VerticalOffset � PlacementTarget �� AncestorType*  $System.Windows.Controls.DataGridCell J� 	CacheMode&   System.Windows.Media.BitmapCache   EnableClearType   SnapsToDevicePixels  MaterialDesignPaper �� CornerRadius  MaterialDesignShadowDepth2 J� Effect  MaterialDesignDivider � RowDefinitions �� StringFormat&   System.Windows.Controls.DataGrid ��Name �Name  � Points! �� Stretch" �� Triggers# P� Property$ P� Value% �� 
TargetName  MaterialDesignDataGridCell& �� Triggers  MaterialDesignTextBoxBorder' ]� 
Conditions( �� Property) �� Value  MaterialDesignSelection  MaterialDesignBody - )MaterialDesignDataGridColumnHeaderGripper & "MaterialDesignDataGridColumnHeader=  7System.Windows.Controls.Primitives.DataGridColumnHeader  MaterialDesignColumnHeader* � 	Resources  Key+ �� 
TargetName, �� TargetProperty9  3System.Windows.Media.Animation.EasingDoubleKeyFrame- O� KeyTime. O� Value/ �� Orientation9   3MaterialDesignThemes.Wpf.ListSortDirectionIndicator0  Name1   SortDirection2   ListSortDirection3 n�Name4 P� 
SourceName5 N� EnterActions6 ��Name  GoToVisible7 N� ExitActions8 �� BeginStoryboardName  
GoToHidden * &MaterialDesignDataGridRowHeaderGripper # MaterialDesignDataGridRowHeader:  4System.Windows.Controls.Primitives.DataGridRowHeader)  #System.Windows.Controls.DataGridRow9 �� 	Converter  MaterialDesignDataGridRow?	  9System.Windows.Controls.Primitives.SelectiveScrollingGrid: � ColumnDefinitions?
  9System.Windows.Controls.Primitives.DataGridCellsPresenter;   
ItemsPanelA  ;System.Windows.Controls.Primitives.DataGridDetailsPresenter<   DetailsVisibility$= 	  SelectiveScrollingOrientation;  5System.Windows.Controls.SelectiveScrollingOrientation>   Vertical? �� ConverterParameter#@   RowDetailsScrollingConverter7  1System.Windows.Controls.DataGridHeadersVisibility
A   Row!B   HeadersVisibilityConverter  MaterialDesignDataGrid-   'MaterialDesignThemes.Wpf.DataGridAssistC   SelectAllCommand
D   AllE   ColumnG  ASystem.Windows.Controls.Primitives.DataGridColumnHeadersPresenterF  NameG ��NameH �� CanContentScrollI ��NameJ �� ScrollableHeightK � MaximumL �� Orientation*M �� #ComputedVerticalScrollBarVisibilityN �� ViewportHeightO �� ViewportSizeP � ValueQ �� ModeR �� ScrollableWidth,S �� %ComputedHorizontalScrollBarVisibilityT �� ViewportWidth�� 5      D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    :x,http://schemas.microsoft.com/winfx/2006/xaml     5      .wpf&clr-namespace:MaterialDesignThemes.Wpf  5      @
converters1clr-namespace:MaterialDesignThemes.Wpf.Converters  5        5      �� 5   
   $h bpack://application:,,,/MaterialDesignThemes.Wpf;component/Themes/materialdesigntheme.checkbox.xaml?�6   �� 5   
   $q kpack://application:,,,/MaterialDesignThemes.Wpf;component/Themes/MaterialDesignTheme.DataGrid.ComboBox.xaml?�6   �� 5	   
   $g apack://application:,,,/MaterialDesignThemes.Wpf;component/Themes/MaterialDesignTheme.Shadows.xaml?�6   �� 5
   
   $g apack://application:,,,/MaterialDesignThemes.Wpf;component/Themes/MaterialDesignTheme.TextBox.xaml?�6   %�-  &	        &	      &	 &     7  &	 �     7  (��     5      " ��$) #MaterialDataGridComboBoxColumnStyle��)7  (�� �    5!      " ��$0 *MaterialDataGridComboBoxColumnEditingStyle��)7  &	 �    7  7 	 &	
 �    7  7  7 	 7  (��     5}      $" DataGridSelectAllButtonStyle��"  )&	 �    &	 b    &	 t    7  7  7  7  &	 �    &	 �    7   7  7  &	 �    &	 �!    7  7  7  �� 5      6#      5      6.   �� 5      " ��6>   8   .�5   
   ��  � ��$ Center=�60   �� 5   
    �@J�IsHitTestVisible .  6-   �� 5   
    � |� .  6&   5      �� 5      " ��6E   8   .�5   
   ��  � ��$ Center=�60   5      �� 5      " ��5      8   .�5   
   ��  �@J�IsHitTestVisible .  6-   �� 5   
    � |� .  6&   5      �� 5!      " ��5"      8   5%      �� 5'      " ��6A   8   .�5(   
   ��  � ��$ 0 0 0 -5q�6#   �� 5)   
    � ��$ 0 0 0 2q�6,   �� 5*   
    � ��# �  6(   �� 5+   
    � �� 5,      �� 5-      " ��6"   .R�5.      �� $	 border��6   #��z��6-   #��z��6Y   #��z��6�   
 . $ 0 -1 0 3q�5/      ._�50      � .+�51      �� $ PART_ContentHost��6+   |�.  $��Hidden=�6W   $��Hidden=�6~   �� 53      $
 Hint��55   (   $��1 0 1 0q�56   (   ��53   (   �� $  (wpf:TextFieldAssist.Hint)� �� *TemplatedParent+y�54   (   �� *Text+8   57   (   �� $' !(wpf:TextFieldAssist.HintOpacity)� �� *TemplatedParent+58      59      5:      5<      5=      �� 5?      " ��6F   8   .�5@   
   ��  � ��$ 0 0 0 -5q�6#   �� 5A   
    � ��$ 0 0 0 2q�6,   �� 5B   
    � ��# �  6(   �� 5C   
    � �� 5D      �� 5E      " ��6"   .R�5F      � .+�5G      � ��.  . $��RelativePoint=�6H   $ -6��6b   $ -6��6x   $
��Fade=�5I        5H       ��  �� *FindAncestor+"  .��5J      � .+�5K   "   ��  5L   &     5M   *    .  . 6M   .u�5O   &   �� #���  6-   $ 2��6`   $��5,5,5,5q�5P   -   8  $��1q�5R   -   5S   '   5T   #   �� 5U   "   $ 16q�6)   
������ $ 2��6O   $��5,5,5,5q�5V   )   #���  5W   )   $��1q�5X   )   ._�5Y   &   �  5Z   *   �� 5[   .   $
��Auto �6<   �� 5\   .   $
��Auto �6<   .+�5^   *   �� #��z��61   #��z��6]   #��z��6�   
 . $ 0 -1 0 3q�5_   -   ._�5`   .   � .+�5a   2   �� $ PART_ContentHost��6?   |�.  $��Hidden=�6k   $��Hidden=�6�   �� 5c   2   $
 Hint��5f   <   $��1 0 1 0q�5g   <   ��5c   <   �� $  (wpf:TextFieldAssist.Hint)� �� *TemplatedParent+y�5d   <   �� *Text+8  ��5e   <   ��  �� *FindAncestor+"  $ ActualWidth� 5h   <   �� $' !(wpf:TextFieldAssist.HintOpacity)� �� *TemplatedParent+5i   /   5j   +   �� 5k   *   $��1��64   $��Right=�6A   $	 .56Q�6]   y�6k   �� *	MaxLength+8  ��5l   .   `� 5m   2   $ {0}/{1}��6?   .1�5n   6   �� $ Text.Length�6p    6>   �� *TemplatedParent+6p   �� 5o   6   $ 	MaxLength�6p    6>   �� *TemplatedParent+6p   5p   3   5r   +   5s   '   5t   #   5u      5v      5w      5x      5z      5{      �� 5}      " ��6{   .�5~   
   ��  � �� 5      �� 5�      " ��6"   .R�5�      � .+�5�      �� $ Border��6$   #��� ��64   
 . 6u   � 5�      $ Arrow��6"   
���   �$��Right=�6>   $��8,8,3,3q�6Z   $
 0.15Q�6k     �   ��� ��� ��� ��� $! Uniform=�6�   $��Bottom=�6�   5�      " 5�      P� 5�      # �@J�IsMouseOver$ . . �5�      �� $% Border��67   # � ��6K    � ��5�      P� 5�      # � ��$ . . �5�      �� $% Border��65   # � ��6I    � ��5�      P� 5�      # � {�$ .  . �5�      �� $% Arrow��6;    � y�$ 	Collapsed=�6N   5�      5�      5�      5�      �� 5�      "  6/   .�5�   
   ��  � �� 6$   ��  �� *Self+$&  (wpf:DataGridAssist.CellPadding)��� 5�   
    � ��
 ���� 6'   �� 5�   
    � ��
 ���� 6(   �� 5�   
    � �� 5�      �� 5�      "  6"   .R�5�      �� #��z��6   #��z��6I   #��z��6}   
 . ._�5�      �� #
 z
 6+   #��z��5�   +   5�      5�      5�      & 5�   
   P� 5�      # �@J�IsKeyboardFocusWithin$ . . �5�      ��  � ��# �  60   5�      ]� 5�      ' 5�      �� 5�      ( �@ 
IsSelected) . 66   �� 5�      ( �@��IsSelectionActive) .  6F   ./�5�      ��  � ��# �  6/   5�      ]� 5�      ' 5�      �� 5�      ( �@ 
IsSelected) . 66   �� 5�      ( �@��IsSelectionActive) . 6F   ./�5�      ��  � ��# �  6/   5�      P� 5�      # � {�$ .  . �5�      ��  �@J�Opacity$	 .56Q�6,   5�      5�      �� 5�      " n�6>   .�5�   
   ��  � ��$ 8��6"   �� 5�   
    � ��
 ���� 6'   �� 5�   
    �@�Cursor$ SizeWE��6#   �� 5�   
    � �� 5�      �� 5�      " n�6"   .R�5�      �� #��z��6   # z��6G   5�      5�      5�      �� 5�      "  67   .�5�   
   ��  � ��$ Center=�65   �� 5�   
    � ��$ 12(�6/   �� 5�   
    � ��$ Medium"�61   �� 5�   
    � �� 6$   ��  �� *Self+$. ((wpf:DataGridAssist.ColumnHeaderPadding)��� 5�   
    � ��# �  6'   �� 5�   
    � �� 5�      �� 5�      "  6"   * 5�      ���� 5�      GoToVisible .��5�      U� $+ SortDirectionIndicator��6<   $, Width�6k   .\�5�   "     $- 0:0:0.0��67   $. 0Q�6I     5�   "   $- 0:0:0.2��67   $. 12Q�6I   5�      5�      �� 5�      
GoToHidden .��5�      U� $+ SortDirectionIndicator��6<   $, Width�6k   .\�5�   "     $- 0:0:0.0��67   $. 12Q�6I     5�   "   $- 0:0:0.2��67   $. 0Q�6I   5�      5�      5�      .R�5�      � .+�5�      �� #��z��6!   #��z��6M   #��z��6�   # z��6�   ._�5�      �� $/ 
Horizontal=�6)   
������ .+�5�   "     $0 SortDirectionIndicator��5�   A   $��0��5�   A   $��12��6K   #2 z1 5�   A   �� 5�   "   #��z��63   ��. #
 z
 6�   #��z��6�   #��z��5�   3   5�      5�      n� 5�      $3 PART_LeftHeaderGripper��6    $
��Left=�6@   8��  6[   n� 5�      $3 PART_RightHeaderGripper��6    $��Right=�6A   8�� 6]   5�      " 5�      P� 5�      # �@J�IsMouseOver$ . . �5�      �� # �  6;    � ��5�      P� 5�      # �@ SortDirection$$ 	AscendingX�6;   . �5�      �� # �  6;    � ��5�      P� 5�      # �@ SortDirection$$ 
DescendingX�6;   . �5�      �� # �  6;    � ��5�      P� 5�      $4 SortDirectionIndicator��6"   # �@ 	IsNeutral$ .  5 5�      �� 5�   "   $6 GoToVisible��6\   8�� 7 5�      �� 5�   "   $8 GoToVisible��63   �� 5�   "   8�� 62   5      5     5     5     �� 5     " n�6;   .�5  
   ��  � ��$ 8��6#   �� 5	  
    � ��
 ���� 6'   �� 5
  
    �@�Cursor$ SizeNS��6#   �� 5  
    � �� 5     �� 5     " n�6"   .R�5     �� #��z��6   # z��6G   5     5     5     �� 5     "  64   .�5  
   ��  � �� 5     �� 5     "  6"   .R�5     � $��24��6   .+�5     �� #��z��6!   #��z��6M   #��z��6�   # z��6�   ._�5     �� $/ 
Horizontal=�6)   .+�5  "   �� ��. #
 z
 6N   $��Center=�6�   �� 5  "   
 .  ��6F   �� *ValidationErrorTemplate+ �� "  y�6�   �� *(Validation.HasError)+89    �� "  5     5     n� 5     $3 PART_TopHeaderGripper��6    8�� $	��Top=�6   n� 5      $3 PART_BottomHeaderGripper��6    8�� $��Bottom=�6�   5!     5"     5$     5%     �� 5'     "  6.   .�5(  
   ��  � ��
 ���� 6'   �� 5)  
    �@J�SnapsToDevicePixels . 60   �� 5*  
    �@=�ErrorTemplate 65   Z� �� 5+  
    �@ ValidationErrorTemplate 5,     �� 5-     .R�5.     �� ���#d50000$��2,0,0,0q�65   $��!��6F   $��Center=�6O   5/     51     �� 52  
    � �� 53     �� 54     "  6"   .R�55     �� $	 
DGR_Border��6   #��z��61   #��z��6]   #��z��6�   
 . ._�56     	  : 57     �� 58  "   $
��Auto �63   �� 59  "   $��* �63    5;     �� 5<  "   $��* �60   �� 5=  "   $
��Auto �60   .+�5?     
  $��1��65   #��z; 6E   #
 z
 6o     5@     $��1��67   $��1��6G   #y�z< 6k  = 6T   �� *AreRowDetailsFrozen+#? Z> #9 Z@  �� "  6k    5A     $��2��60   $= Vertical=�6A   y�6�   �� *HeadersVisibility+#? ZA #9 ZB  �� "  5B     5C     5D     5F     & 5G  
   P� 5H     # �@ 
IsSelected$ . . �5I     ��  � ��# �  6/   5J     P� 5K     # �@J�IsMouseOver$ . . �5L     ��  � ��# �  6/   5M     P� 5N     # �@ 	IsNewItem$ . . �5O     ��  � �� 6+   �� *NewItemMargin+ �� "  5P     5R     �� 5T     "  6+   .�5U  
   ��  � ��# �  6'   �� 5V  
    � ��# �  6'   �� 5W  
    � ��# �  6(   �� 5X  
    � ��$ 0q�6,   �� 5Y  
    � ��$ 13(�6%   �� 5Z  
    �@ GridLinesVisibility$ 
Horizontal=�60   �� 5[  
     �@ RowDetailsVisibilityMode$ VisibleWhenSelected=�65   �� 5\  
    �@ HeadersVisibility$ Column=�6.   �� 5]  
    � �� . 6:   �� 5^  
    �@��PanningMode$
 Both=�65   �� 5_  
    �@��IsFlicksEnabled .  63   �� 5`  
     �@ HorizontalGridLinesBrush# �  65   �� 5a  
   " �@ AutoGeneratedCheckBoxStyle8   6J   �� 5b  
   ) �@ !AutoGeneratedEditingCheckBoxStyle8  6Q   �� 5c  
   % �@ AutoGeneratedEditingTextStyle8  6M   �� 5d  
    �@ EnableEditBoxAssist . 6C   �� 5e  
    � �� 5f     �� 5g     "  6"   .R�5h     �� #��z��6   #��z��6I   #��z��6}   # z��6�   
 . ._�5i     �� $ DG_ScrollViewer��6'   |�.  ��5j     �� 5k  "   " ��62   .R�5l  &   � : 5m  *   �� 5n  .   $
��Auto �6?   �� 5o  .   $��* �6?   �� 5p  .   $
��Auto �6?    5r  *   �� 5s  .   $
��Auto �6<   �� 5t  .   $��* �6<   �� 5u  .   $
��Auto �6<   .+�5w  *   �� #��ZC 61   |�.  ��6r   C� *�� $" DataGridSelectAllButtonStyle��"  +y�6�   �� *HeadersVisibility+#? ZD #9 ZB  �� "  ��6�  �� *CellsPanelHorizontalOffset+ �� "  �� 5x  *   $��0 0 0 1q�61   #���  6K   $��1��6�   y�6�   �� *HeadersVisibility+#? ZE #9 ZB  �� "  ._�5y  .     $!F PART_ColumnHeadersPresenter��6M   5z  +   �� 5{  *   $!G PART_ScrollContentPresenter��6A   #H z��6f   $��2��6�   $��1��6�   �� 5|  *   $I PART_VerticalScrollBar��64   $��2��6T   #K zJ 6d   $L Vertical=�6�   $��1��6�   #y�zM 6�   #O zN 6W  P 6�   �� *VerticalOffset+$Q OneWay=� �� *TemplatedParent+6W  � 5}  *   $��1��6/   $��2��6?   : 5~  .   �� 5  2   ��6C   �� **(NonFrozenColumnsViewportHorizontalOffset+ �� "  �� 5�  2   $��* �6C   .+�5�  .   �� $I PART_HorizontalScrollBar��68   $��1��6Z   #K zR 6j   $L 
Horizontal=�6�   #y�zS 6�   #O zT 6U  P 6�   �� *HorizontalOffset+$Q OneWay=� �� *TemplatedParent+6U  5�  +   5�  '   5�  #   .��5�     �� #
 z
 6-   5�     5�     5�     5�     & 5�  
   ]� 5�     ' 5�     �� 5�     ( �@��
IsGrouping) . 66   �� 5�     "( �@%�IsVirtualizingWhenGrouping) .  6X   ./�5�     ��  � �� .  6B   5�     5�     5�     