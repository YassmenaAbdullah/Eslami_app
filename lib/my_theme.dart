import 'package:flutter/material.dart';

class MyTheme {
  static const Color lightPrimary = Color(0xFFB7935F);
  static const Color darkPrimary = Color(0xFF141A2E);
  static const Color yellow = Color(0xFFFACC1D);

  //////////

  static final ThemeData lightTheme = ThemeData(
    bottomSheetTheme: BottomSheetThemeData(
        backgroundColor: Colors.white,
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
          topLeft: Radius.circular(50),
          topRight: Radius.circular(50),
        ))),
    cardColor: Colors.white,
    accentColor: lightPrimary,
    textTheme: TextTheme(
      headline6: TextStyle(
        fontSize: 20.0,
        color: Colors.black,
      ),
      headline4: TextStyle(
        fontSize: 24.0,
        color: Colors.black,
      ),
      headline3: TextStyle(
        height: 1.6,
        fontSize: 18.0,
        fontWeight: FontWeight.w300,
        color: Colors.black,
      ),
      subtitle2: TextStyle(fontSize: 15.4, color: Colors.black),
    ),
    primaryColor: lightPrimary,
    appBarTheme: const AppBarTheme(
      color: Colors.transparent,
      elevation: 0,
      titleTextStyle: TextStyle(
        color: Colors.black,
        fontSize: 26.8,
        fontWeight: FontWeight.bold,
      ),
      iconTheme: IconThemeData(
        color: Colors.black,
      ),
    ),
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
      showSelectedLabels: true,
      showUnselectedLabels: false,
      selectedIconTheme: IconThemeData(
        size: 36,
        color: Colors.black,
      ),
      unselectedIconTheme: IconThemeData(
        size: 28,
        color: Colors.white,
      ),
      selectedLabelStyle: TextStyle(
        color: Colors.black,
      ),
      selectedItemColor: Colors.black,
    ),
  );
  static final ThemeData darkTheme = ThemeData(
    bottomSheetTheme: BottomSheetThemeData(
        backgroundColor: darkPrimary,
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
          topLeft: Radius.circular(50),
          topRight: Radius.circular(50),
        ))),
    cardColor: darkPrimary,
    accentColor: yellow,
    textTheme: TextTheme(
      headline6: TextStyle(
        fontSize: 20.0,
        color: Colors.white,
      ),
      headline4: TextStyle(
        fontSize: 24.0,
        color: Colors.white,
      ),
      headline3: TextStyle(
        height: 1.6,
        fontSize: 18.0,
        fontWeight: FontWeight.w300,
        color: Colors.white,
      ),
      subtitle2: TextStyle(
        fontSize: 15.4,
        color: Colors.white,
      ),
    ),
    primaryColor: darkPrimary,
    appBarTheme: const AppBarTheme(
      color: Colors.transparent,
      elevation: 0,
      titleTextStyle: TextStyle(
        color: Colors.white,
        fontSize: 26.8,
        fontWeight: FontWeight.bold,
      ),
      iconTheme: IconThemeData(color: Colors.white),
    ),
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
      showSelectedLabels: true,
      showUnselectedLabels: false,
      selectedIconTheme: IconThemeData(
        size: 36,
        color: yellow,
      ),
      unselectedIconTheme: IconThemeData(
        size: 28,
        color: Colors.white,
      ),
      selectedLabelStyle: TextStyle(
        color: yellow,
      ),
      selectedItemColor: yellow,
    ),
  );
}
