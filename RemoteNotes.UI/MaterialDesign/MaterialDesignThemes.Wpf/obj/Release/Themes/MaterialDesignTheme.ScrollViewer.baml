   M S B A M L   `   `   `  ���� \  XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089 &  "MaterialDesignScrollViewerTemplate  �� 
TargetType � 	Resources  Key �� TargetProperty �� 
TargetName9   3System.Windows.Media.Animation.EasingDoubleKeyFrame O� KeyTime O� Value �Name � ColumnDefinitions � RowDefinitions	 ��Name  MaterialDesignSelection
 ��Name �� CanContentScroll �� CanHorizontallyScroll �� CanVerticallyScroll ��Name4  .System.Windows.Automation.AutomationProperties   AutomationId � Cursor �� ScrollableHeight � Maximum � Minimum* �� #ComputedVerticalScrollBarVisibility �� ViewportHeight �� ViewportSize J� Opacity � Value �� Mode �� RelativeSource �� ScrollableWidth �� Orientation, �� %ComputedHorizontalScrollBarVisibility �� ViewportWidth �� Triggers  P� Property! P� Value" N� ExitActions# ��Name  	MouseExit$ N� EnterActions  
MouseEnter% �� 
TargetType  MaterialDesignScrollViewer& �� Property' �� Value�� D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     :x,http://schemas.microsoft.com/winfx/2006/xaml      %U  &	        7  7  &	     7   �� "  �� ���� 
MouseEnter .��U� $ (UIElement.Opacity)�$ PART_HorizontalScrollBar��.\�   $ 0��$
 0.56Q�   $ 0:0:0.2��$ 1Q�U� $ (UIElement.Opacity)�$ PART_VerticalScrollBar��.\�   $ 0��$
 0.56Q�   $ 0:0:0.2��$ 1Q��� 	MouseExit .��U� $ (UIElement.Opacity)�$ PART_VerticalScrollBar��.\�   $ 0��$
 0.56Q�   $ 0:0:0.2��$
 0.56Q�U� $ (UIElement.Opacity)�$ PART_HorizontalScrollBar��.\�   $ 0��$ 1Q�   $ 0:0:0.2��$
 0.56Q�.R�� $
 Grid��#��z�� �� $��* ��� $
��Auto � �� $��* ��� $
��Auto �.+��� $	 Corner��$��1��#���  $��1���� $!
 PART_ScrollContentPresenter��# z�� .   .  #��z��#��z��$��0��#��z��$��0���� $ PART_VerticalScrollBar��$ VerticalScrollBar��$ Arrow��$��1��# z $ 0Q�$��0��#y�z # z $	 .56Q� �� *VerticalOffset+$ OneWay=� �� *TemplatedParent+�� $ PART_HorizontalScrollBar��$ HorizontalScrollBar��$ Arrow��$��0��# z $ 0Q�$ 
Horizontal=�$��1��#y�z # z $	 .56Q� �� *HorizontalOffset+$ OneWay=� �� *TemplatedParent+ P�   �@J�IsMouseOver! . " �� $# MouseExit_BeginStoryboard��8��  $ �� $ # MouseEnter_BeginStoryboard��8�� �� "% ��.��� & � ��8'   