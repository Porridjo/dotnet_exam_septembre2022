   M S B A M L   `   `   `  ����L  HExamSeptembre2022, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null5clr-namespace:ExamSeptembre2022ExamSeptembre2022  5   	   "    ExamSeptembre2022.MainWindow   5   	   W SPresentationCore, Version=6.0.2.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=6.0.2.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=6.0.2.0, Culture=neutral, PublicKeyToken=b77a5c561934e089R NWindowsBase, Version=6.0.2.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     5   	   R NSystem.Xaml, Version=6.0.2.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   1localclr-namespace:ExamSeptembre2022     5   	     � Title$  
MainWindow��5   	   $	��450��6   $	��800��6)    � 	Resources 5	         listboxTemplate �� Orientation  saleslistboxTemplate��%U  &	        &	 �     �� 5
   
   .R�5      �� $ 
Horizontal=�6   .+�5      �� ��6   �� *	ProductId+�� 5      ��6   �� *ProductNameListBox+5      5      �� 5   
   .R�5      �� $ 
Horizontal=�6   .+�5      �� ��6   �� *	ProductId+�� 5      ��6   �� *Total+5      5      5      .��5      �  � RowDefinitions 5   
   �� 5      $
��Auto �6   �� 5      $��* �6   .+�5    
   � $��0��6    � ColumnDefinitions 5!      �� 5"      $
��204* �6#   �� 5#      $
��251* �6#   .+�5%      �� -   5         ��Name$ productList��5%      $��0��6+   $��0��68   #��[  6l   $	��150��6�   $	��200��6�   ��6H   �� *ProductList+ �� SelectedItem 6�   �� *SelectedProduct+6�   �� 5&      -   5        $ 	salesList��5&      $��0��6)   $��1��66   #��[ 6h   $	��150��6�   $	��200��6�   ��6F   �� *	SalesList+6�   5(      � 5)   
   $��1��6   .+�5*      �� $��	ProductId��6   $
��Left=�6(   $��	51,20,0,0q�6C   $	��Top=�6V   �� 5+      $��ProductName��6   $
��Left=�6*   $��	51,50,0,0q�6E   $	��Top=�6X   �� 5,      $��SupplierContactName��6   $
��Left=�62   $��	51,80,0,0q�6M   $	��Top=�6`   �� 5-      $��QuantityPerUnit��6   $
��Left=�6.   $��
51,110,0,0q�6I   $	��Top=�6]   �� 5.      $
��Left=�6   $��23��61   $��
200,20,0,0q�6=    �� TextWrapping$
 Wrap=�6Q   $	��Top=�5/   K   $	��200��6c    �� 
IsReadOnly$
 True��6o   ��5.   e   �� *	ProductId+	 �� Mode$	 OneWay=�
 � DataContext
 5/      �� *SelectedItem+ �� ElementName$ productList��6o   �� 50      $
��Left=�6   $��23��61   $��
200,50,0,0q�6=   $
 Wrap=�6Q   $	��Top=�51   K   $	��200��6c   ��50   e   �� *ProductName+ �� UpdateSourceTrigger$ PropertyChanged=�
 51      �� *SelectedItem+$ productList��6c   �� 52      $
��Left=�6   $��23��61   $��
200,80,0,0q�6=   $
 Wrap=�6Q   $	��Top=�53   K   $	��200��6c   $
 True��6o   ��52   e   �� *SupplierContactName+$	 OneWay=�
 53      �� *SelectedItem+$ productList��6o   �� 54      $
��Left=�6   $��23��61   $��200,110,0,0q�6=   $
 Wrap=�6R   $	��Top=�55   J   $	��200��6b   ��54   f   �� *QuantityPerUnit+
 55      �� *SelectedItem+$ productList��6b   �� 56      $
��Save��66   $��23��6E   $
��Left=�6Q   $	��Top=�6l   $��75��6�   $��
51,150,0,0q�6�   ��6   �� *SaveCommand+6�   57      5:      5;      