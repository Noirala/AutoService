   M S B A M L   `   `   `  ����F  BAutoService, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null)clr-namespace:AutoServiceAutoService  5   	       AutoService.MainWindow   5   	   R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   +localclr-namespace:AutoService     5   	   -   5          �Name$
  Root��5	   	   $��Arial Black)�5   	    � Title$) #Услуги автосервиса��5
   	   $	��300��5   	   $	��300��6   $	��450��5   	   $
��1150��6   .��5      �  � ColumnDefinitions 5   
   �� 5      $	��150 �6   �� 5      $��1* �6   .+�5   
   �� $��5q�5      $��./images/service_logo.png��5      $	��Top=�5      �� 5   
    �� Orientation$ Vertical=�6   $��5 5 5 60q�6,   $��Bottom=�6>   .+�5      �� -   5        $#��Добавить услугу��5      y�6/   �� *AdminVisibility+6V   5      �� 5   
   $ Vertical=�6   $��5 5 5 25q�6,   $��Bottom=�6>   .+�5      �� -   5        $��AdminButton��5   :   ��6   �� *AdminModeCaption+6M   5      �� 5   
   $ Vertical=�5      $��5q�5      $��Bottom=�5      .+�5       �� -   5         ��Name$ 
ExitButton��5!      $��
Выход��5"      5#      5$      � 5%   
   $��1��6    � RowDefinitions 5&      �� 5'      $��30 �6    �� 5(      $��1* �6    �� 5)      $��30 �6    .+�5+      �� $ 
Horizontal=�6   $��Center=�62   .+�5,      �� $��
Цена: ��6   	� 5-      -   5         	� 	GroupName$ Price��5-      
 � Tag$ 1��60   $!��по возрастанию��68    d� 	IsChecked$
 TrueY�6Q   $��Center=�6b   6�   	� 5.      -   5        $ Price��5.      $ 2��60   $��по убыванию��68   $��Center=�6l   5/      &   System.Windows.Controls.DataGrid  50      $��1��6;   	   CanUserSortColumns	 .  
   CanUserAddRows
 .     AutoGenerateColumns .  ��6   �� *ServiceList+   RowStyle 51      �� 52       �� 
TargetType)  #System.Windows.Controls.DataGridRow"  6    �� Triggers 53      �� 54       �� Binding 6*   �� *HasDiscount+ �� Value True6J   .a�55   "   ��  �� Property � �� �� Value
 ����6?   56      58         Columns 5:      0  *System.Windows.Controls.DataGridTextColumn  5;      ,  &System.Windows.Controls.DataGridColumn   Width5  /System.Windows.Controls.DataGridLengthConverter$	 250 6)      Header$+ %Наименование услуги��65   1  +System.Windows.Controls.DataGridBoundColumn   Binding 6R   �� *Title+4  .System.Windows.Controls.DataGridTemplateColumn  5<      $	 100 6-   $ Стоимость��69      CellTemplate 5=      �� 5>      .R�5?   "   �� ��6,   �� *CostTextDecoration+��6[   �� *
CostString+5@      5B        5C      $	 170 6)   $, &Стоимость со скидкой��65    6S   �� *CostWithDiscount+  5D      $	 150 6)   $( "Продолжительность��65    6P   �� *DurationInSeconds+  5E      $ 64 6-   $  ��68    5F      �� 5G      .R�5H   "   �� $��64��6(   $��64��64   ��6?   �� *MainImagePath+5I      5K        5L      $ Действия��6-    5M      �� 5N      .R�5O   "   �� $ 
Horizontal=�6r   y�6-   �� *DataContext.AdminVisibility+ �� ElementName$
 Root��.+�5P   &   �� $��
EditButton��6E   -   5        $ ��Редактировать��5P   -   6W   �� 5Q   &   $��DeleteButton��6?   -   5        $��Удалить��5Q   -   6S   5R   #   5S      5U        5V      $ 60 6)   $ Скидка��64    6D   �� *
Discount+5X      5Y      5Z      5[      