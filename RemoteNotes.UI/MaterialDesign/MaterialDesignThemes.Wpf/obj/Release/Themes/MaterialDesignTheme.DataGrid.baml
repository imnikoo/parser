   M S B A M L   `   `   `  ���� W  SMaterialDesignThemes.Wpf, Version=1.2.0.42456, Culture=neutral, PublicKeyToken=nullC&clr-namespace:MaterialDesignThemes.WpfMaterialDesignThemes.Wpf  Y1clr-namespace:MaterialDesignThemes.Wpf.Converters#MaterialDesignThemes.Wpf.Converters  \ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089  �� MergedDictionaries �� Source    BooleanToVisibilityConverterF    @MaterialDesignThemes.Wpf.Converters.NotZeroToVisibilityConverter   NotZeroToVisibilityConverter - )MaterialDesignDataGridCheckBoxColumnStyle �� 
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
D   AllE   ColumnG  ASystem.Windows.Controls.Primitives.DataGridColumnHeadersPresenterF  NameG ��NameH �� CanContentScrollI ��NameJ �� ScrollableHeightK � MaximumL �� Orientation*M �� #ComputedVerticalScrollBarVisibilityN �� ViewportHeightO �� ViewportSizeP � ValueQ �� ModeR �� ScrollableWidth,S �� %ComputedHorizontalScrollBarVisibilityT �� ViewportWidth�� D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    :x,http://schemas.microsoft.com/winfx/2006/xaml     .wpf&clr-namespace:MaterialDesignThemes.Wpf  @
converters1clr-namespace:MaterialDesignThemes.Wpf.Converters    �� $h bpack://application:,,,/MaterialDesignThemes.Wpf;component/Themes/materialdesigntheme.checkbox.xaml?��� $q kpack://application:,,,/MaterialDesignThemes.Wpf;component/Themes/MaterialDesignTheme.DataGrid.ComboBox.xaml?��� $g apack://application:,,,/MaterialDesignThemes.Wpf;component/Themes/MaterialDesignTheme.Shadows.xaml?��� $g apack://application:,,,/MaterialDesignThemes.Wpf;component/Themes/MaterialDesignTheme.TextBox.xaml?�%�  &	        &	      &	 
     7  &	 o     7  (�� �     " ��$) #MaterialDataGridComboBoxColumnStyle��)7  (�� �     " ��$0 *MaterialDataGridComboBoxColumnEditingStyle��)7  &	 �     7  7 	 &	
 �    7  7  7 	 7  (�� �    $" DataGridSelectAllButtonStyle��"  )&	 >    &	 d
    &	 �
    7  7  7  7  &	 0    &	 �    7   7  7  &	 0    &	 9    7  7  7  ��    �� " ��8   .���  � ��$ Center=���  �@J�IsHitTestVisible .  ��  � |� .  �� " ��8   .���  � ��$ Center=��� " ��8   .���  �@J�IsHitTestVisible .  ��  � |� .  �� " ��8   �� " ��8   .���  � ��$ 0 0 0 -5q���  � ��$ 0 0 0 2q���  � ��# �  ��  � �� �� " ��.R��� $	 border��#��z��#��z��#��z��
 . $ 0 -1 0 3q�._�� .+��� $ PART_ContentHost��|�.  $��Hidden=�$��Hidden=��� $
 Hint��$��1 0 1 0q����� $  (wpf:TextFieldAssist.Hint)� �� *TemplatedParent+y��� *Text+8   �� $' !(wpf:TextFieldAssist.HintOpacity)� �� *TemplatedParent+�� " ��8   .���  � ��$ 0 0 0 -5q���  � ��$ 0 0 0 2q���  � ��# �  ��  � �� �� " ��.R�� .+�� ��.  . $��RelativePoint=�$ -6��$ -6��$
��Fade=� ��  �� *FindAncestor+"  .��� .+���     .  . .u��� #���  $ 2��$��5,5,5,5q�8  $��1q��� $ 16q�
������ $ 2��$��5,5,5,5q�#���  $��1q�._��  �� $
��Auto ��� $
��Auto �.+��� #��z��#��z��#��z��
 . $ 0 -1 0 3q�._�� .+��� $ PART_ContentHost��|�.  $��Hidden=�$��Hidden=��� $
 Hint��$��1 0 1 0q����� $  (wpf:TextFieldAssist.Hint)� �� *TemplatedParent+y��� *Text+8  ����  �� *FindAncestor+"  $ ActualWidth� �� $' !(wpf:TextFieldAssist.HintOpacity)� �� *TemplatedParent+�� $��1��$��Right=�$	 .56Q�y��� *	MaxLength+8  ��`� $ {0}/{1}��.1��� $ Text.Length� �� *TemplatedParent+�� $ 	MaxLength� �� *TemplatedParent+�� " ��.���  � �� �� " ��.R�� .+��� $ Border��#��� ��
 . � $ Arrow��
���   �$��Right=�$��8,8,3,3q�$
 0.15Q�  �   ��� ��� ��� ��� $! Uniform=�$��Bottom=�" P� # �@J�IsMouseOver$ . . ��� $% Border��# � �� � ��P� # � ��$ . . ��� $% Border��# � �� � ��P� # � {�$ .  . ��� $% Arrow�� � y�$ 	Collapsed=��� "  .���  � �� ��  �� *Self+$&  (wpf:DataGridAssist.CellPadding)���  � ��
 ���� ��  � ��
 ���� ��  � �� �� "  .R��� #��z��#��z��#��z��
 . ._��� #
 z
 #��z��& P� # �@J�IsKeyboardFocusWithin$ . . ���  � ��# �  ]� ' �� ( �@ 
IsSelected) . �� ( �@��IsSelectionActive) .  ./���  � ��# �  ]� ' �� ( �@ 
IsSelected) . �� ( �@��IsSelectionActive) . ./���  � ��# �  P� # � {�$ .  . ���  �@J�Opacity$	 .56Q��� " n�.���  � ��$ 8����  � ��
 ���� ��  �@�Cursor$ SizeWE����  � �� �� " n�.R��� #��z��# z���� "  .���  � ��$ Center=���  � ��$ 12(���  � ��$ Medium"���  � �� ��  �� *Self+$. ((wpf:DataGridAssist.ColumnHeaderPadding)���  � ��# �  ��  � �� �� "  * ���� GoToVisible .��U� $+ SortDirectionIndicator��$, Width�.\�  $- 0:0:0.0��$. 0Q�  $- 0:0:0.2��$. 12Q��� 
GoToHidden .��U� $+ SortDirectionIndicator��$, Width�.\�  $- 0:0:0.0��$. 12Q�  $- 0:0:0.2��$. 0Q�.R�� .+��� #��z��#��z��#��z��# z��._��� $/ 
Horizontal=�
������ .+�  $0 SortDirectionIndicator��$��0��$��12��#2 z1 �� #��z����. #
 z
 #��z��#��z��n� $3 PART_LeftHeaderGripper��$
��Left=�8��  n� $3 PART_RightHeaderGripper��$��Right=�8�� " P� # �@J�IsMouseOver$ . . ��� # �   � ��P� # �@ SortDirection$$ 	AscendingX�. ��� # �   � ��P� # �@ SortDirection$$ 
DescendingX�. ��� # �   � ��P� $4 SortDirectionIndicator��# �@ 	IsNeutral$ .  5 �� $6 GoToVisible��8�� 7 �� $8 GoToVisible���� 8�� �� " n�.���  � ��$ 8����  � ��
 ���� ��  �@�Cursor$ SizeNS����  � �� �� " n�.R��� #��z��# z���� "  .���  � �� �� "  .R�� $��24��.+��� #��z��#��z��#��z��# z��._��� $/ 
Horizontal=�.+��� ��. #
 z
 $��Center=��� 
 .  ���� *ValidationErrorTemplate+ �� "  y��� *(Validation.HasError)+89    �� "  n� $3 PART_TopHeaderGripper��8�� $	��Top=�n� $3 PART_BottomHeaderGripper��8�� $��Bottom=��� "  .���  � ��
 ���� ��  �@J�SnapsToDevicePixels . ��  �@=�ErrorTemplate Z� ��  �@ ValidationErrorTemplate �� .R��� ���#d50000$��2,0,0,0q�$��!��$��Center=���  � �� �� "  .R��� $	 
DGR_Border��#��z��#��z��#��z��
 . ._�	  : �� $
��Auto ��� $��* � �� $��* ��� $
��Auto �.+�
  $��1��#��z; #
 z
   $��1��$��1��#y�z< = �� *AreRowDetailsFrozen+#? Z> #9 Z@  �� "    $��2��$= Vertical=�y��� *HeadersVisibility+#? ZA #9 ZB  �� "  & P� # �@ 
IsSelected$ . . ���  � ��# �  P� # �@J�IsMouseOver$ . . ���  � ��# �  P� # �@ 	IsNewItem$ . . ���  � �� �� *NewItemMargin+ �� "  �� "  .���  � ��# �  ��  � ��# �  ��  � ��# �  ��  � ��$ 0q���  � ��$ 13(���  �@ GridLinesVisibility$ 
Horizontal=���   �@ RowDetailsVisibilityMode$ VisibleWhenSelected=���  �@ HeadersVisibility$ Column=���  � �� . ��  �@��PanningMode$
 Both=���  �@��IsFlicksEnabled .  ��   �@ HorizontalGridLinesBrush# �  �� " �@ AutoGeneratedCheckBoxStyle8   �� ) �@ !AutoGeneratedEditingCheckBoxStyle8  �� % �@ AutoGeneratedEditingTextStyle8  ��  �@ EnableEditBoxAssist . ��  � �� �� "  .R��� #��z��#��z��#��z��# z��
 . ._��� $ DG_ScrollViewer��|�.  ���� " ��.R�� : �� $
��Auto ��� $��* ��� $
��Auto � �� $
��Auto ��� $��* ��� $
��Auto �.+��� #��ZC |�.  ��C� *�� $" DataGridSelectAllButtonStyle��"  +y��� *HeadersVisibility+#? ZD #9 ZB  �� "  ���� *CellsPanelHorizontalOffset+ �� "  �� $��0 0 0 1q�#���  $��1��y��� *HeadersVisibility+#? ZE #9 ZB  �� "  ._�  $!F PART_ColumnHeadersPresenter���� $!G PART_ScrollContentPresenter��#H z��$��2��$��1���� $I PART_VerticalScrollBar��$��2��#K zJ $L Vertical=�$��1��#y�zM #O zN P �� *VerticalOffset+$Q OneWay=� �� *TemplatedParent+� $��1��$��2��: �� ���� **(NonFrozenColumnsViewportHorizontalOffset+ �� "  �� $��* �.+��� $I PART_HorizontalScrollBar��$��1��#K zR $L 
Horizontal=�#y�zS #O zT P �� *HorizontalOffset+$Q OneWay=� �� *TemplatedParent+.���� #
 z
 & ]� ' �� ( �@��
IsGrouping) . �� "( �@%�IsVirtualizingWhenGrouping) .  ./���  � �� .  