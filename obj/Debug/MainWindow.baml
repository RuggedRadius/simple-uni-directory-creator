   M S B A M L   `   `   `  ����N  JUniDirectoryCreator, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null9!clr-namespace:UniDirectoryCreatorUniDirectoryCreator  5   	   $    UniDirectoryCreator.MainWindow   5   	   \ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   3local!clr-namespace:UniDirectoryCreator     5   	   -   5          �Name$  wndMain��5   	    � Title$ Uni Directory Creator��5   	   $	��342��6'   $	��484��64   .��5	      � .+�5
   
   �� -   5         ��Name$ btnCreateDirectories��5
      $��Create Directories��6/   $��Center=�6L   $��0,0,0,10q�6i   $��Bottom=�6{   $	��250��6�   $��30��6�   6�   �� 5   
   -   5        $ btnBrowseBaseDirectory��5      $��	Browse...��61   $
��Left=�6E   $��20��6`   $��
395,30,0,0q�6l   $	��Top=�6�   $��65��6�   6�   �� 5   
   -   5         ��Name$ txtBaseDirectory��5      $
��Left=�6,   $��20��6G   $��	15,30,0,0q�6S    �� TextWrapping$
 Wrap=�6f   $��C:\MyUniFolder��6z   $	��Top=�6�   $	��380��6�   �� 5   
   -   5         ��Name$ label��5      $��Base Directory:��6   $
��Left=�69   $��15,5,0,0q�6T   $	��Top=�6f   �� 5   
   -   5        $ 
label_Copy��5      $��Units:��6$   $
��Left=�65   $��	18,59,0,0q�6P   $	��Top=�6c   &   System.Windows.Controls.DataGrid  5   
   -   5          Name$ dgUnits��5      $
��Left=�6$   $	��176��6?   $��	17,84,0,0q�6L   $	��Top=�6_   $	��445��6w      
IsReadOnly .     AutoGenerateColumns .  	   SelectionUnit$
	 Cell=�6�   
   SelectionMode$
 Single=�6�      Columns 5      0  *System.Windows.Controls.DataGridTextColumn  5      ,  &System.Windows.Controls.DataGridColumn   Width5  /System.Windows.Controls.DataGridLengthConverter$ * 6%      Header$ 	Unit Code��6/   1  +System.Windows.Controls.DataGridBoundColumn   Binding 6B   ��  �� Path$ unitCode� �� Mode$ TwoWay=� �� NotifyOnSourceUpdated .   5      $ * 6%   $ Lectures��6/    6A   �� $ lectureCount�$ TwoWay=� .   5      $ * 6%   $
 Labs��6/    6=   �� $ labCount�$ TwoWay=� .   5      $ * 6%   $ Assignments��6/    6D   �� $ assignmentCount�$ TwoWay=� . 5      5      5      