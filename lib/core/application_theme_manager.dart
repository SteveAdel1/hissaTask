import 'package:flutter/material.dart';

class ApplicationThemeManager{
  static ThemeData theme = ThemeData(

    bottomNavigationBarTheme:
    const BottomNavigationBarThemeData(
      type: BottomNavigationBarType.fixed,
      backgroundColor: Colors.white,
      selectedItemColor: Color(0xFFFE5E00),
      selectedIconTheme: IconThemeData(
        color: Color(0xFFFE5E00),
      ),
      selectedLabelStyle: TextStyle(fontFamily:"Tajawal" , fontWeight: FontWeight.w700 , fontSize: 10 ),
      unselectedLabelStyle: TextStyle(fontFamily:"Tajawal" , fontWeight: FontWeight.w400 , fontSize: 10),

      showUnselectedLabels: true,
      unselectedIconTheme:
      IconThemeData(color:
      Colors.black,),
    ),
  );
}