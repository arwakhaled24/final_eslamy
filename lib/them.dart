import 'package:flutter/material.dart';

class theming {
  static Color lightprimarycolor = Color(0XFFB7935F);
  static Color blackcolor = Color(0xFFB7935F);
  static Color whitecolor = Color(0xffF8F8F8);
  static Color darkprimarycolor = Color(0xff141a2e);
  static Color yello = Color(0xfffacc1d);
  static Color darkwhitecolor = Color(0xffF8F8F8);
  static ThemeData lightthem = ThemeData(

      cardColor: lightprimarycolor,
      primaryColor: lightprimarycolor,
      scaffoldBackgroundColor: Colors.transparent,
      appBarTheme: AppBarTheme(
          iconTheme: IconThemeData(color: Colors.black),
          color: Colors.transparent,
          elevation: 0,
          centerTitle: true,
          titleTextStyle: TextStyle(
            fontSize: 32,
            color: Colors.black,
          )),
      bottomNavigationBarTheme: BottomNavigationBarThemeData(
        backgroundColor: lightprimarycolor,
        selectedItemColor: Colors.black,
        unselectedItemColor: Colors.white,
      ),
      textTheme: TextTheme(
          subtitle1: TextStyle(fontSize: 26, color: Colors.black),
          subtitle2: TextStyle(
            color: Colors.black,
            fontSize: 24,
          ),
          bodyText1: TextStyle(color: Colors.black, fontSize: 24)),);
  static ThemeData darkthem = ThemeData(
      cardColor: Colors.white,
      primaryColor: darkprimarycolor,
      scaffoldBackgroundColor: Colors.transparent,
      appBarTheme: AppBarTheme(
          iconTheme: IconThemeData(color: whitecolor),
          color: Colors.transparent,
          elevation: 0,
          centerTitle: true,
          titleTextStyle: TextStyle(
            fontSize: 32,
            color: Colors.white,
          )),
      bottomNavigationBarTheme: BottomNavigationBarThemeData(
        backgroundColor: darkprimarycolor,
        selectedItemColor: yello,
        unselectedItemColor: whitecolor,
      ),
      textTheme: TextTheme(
        bodyText1: TextStyle(color: yello, fontSize: 24),
        subtitle1: TextStyle(fontSize: 26, color: darkwhitecolor),
        subtitle2: TextStyle(
          color: darkwhitecolor,
          fontSize: 24,
        ),
      ));

}
