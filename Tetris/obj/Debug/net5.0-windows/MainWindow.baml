   M S B A M L   `   `   `  ����A  =Tetris, Version=1.0.0.0, Culture=neutral, PublicKeyToken=nullclr-namespace:TetrisTetris  5   	       Tetris.MainWindow   5   	   W SPresentationCore, Version=5.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=5.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=5.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089R NWindowsBase, Version=5.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     5   	   R NSystem.Xaml, Version=5.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   &localclr-namespace:Tetris     5   	   -   5          � Title$  Tetris��5   	   $	��600��6   $	��800��6%   $	��600��5	   	   $	��600��6   
�������$��Segoe UI Light)�5   	   $��28(�6%   .��5      �  � RowDefinitions 5   
   �� 5      $
��auto �6   �� 5      $��* �6    � ColumnDefinitions 5   
   �� 5      $��* �6   �� 5      $
��auto �6   �� 5      $��* �6   ��5   
   �� 5       �� ImageSource$ Assets/Background.png��6   .+�5   
   (� $��1��5      $��1��5      $��0,0,0,20q�5      .��5       �� -   5         ��Name$ 
GameCanvas��5       $��1��5!      $��1��5"      ���#101010$	��250��5$      $	��510��5%      $
}�True��5&      5'      5)      �� 5+   
   -   5         ��Name$ 	ScoreText��5+      $��0��5,      $��1��5-      $��Score: ��5.      $��0, 10q�5/       �� TextAlignment$ Center=�50      �� 52   
   $��1��6   $��0��53      $��Center=�54      $��Right=�55      .+�56      �� $
��Hold��6   $ Center=�57      �� 5:      -   5         ��Name$ 	HoldImage��5:      $��20q�5;      $	��125��5<      5=      �� 5?   
   $��1��6   $��2��5@      $��Center=�5A      $
��Left=�5B      .+�5C      �� $
��Next��6   $ Center=�5D      �� 5E      -   5        $ 	NextImage��5E      $��20q�5F      $	��125��5G      5I      � 5K   
   -   5         �Name$ GameOverMenu��5K      ���	#CC000000$��2��5M      $��3��5N      $y�Hidden=�5O      .+�5P      �� $��Center=�6   $��Center=�5Q      .+�5R      �� $��	Game Over��6   $��48(�5S      $ Center=�5T      �� 5U      -   5        $ FinalScoreText��5U      $��48(�5V      $ Center=�5W      �� 5X      -   5        $��
Play Again��5X      
������$��0,20,0,0q�5Z      $��5q�5[      5\      5]      5_      5`      5a      