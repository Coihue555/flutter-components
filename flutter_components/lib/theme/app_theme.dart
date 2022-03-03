import 'package:flutter/material.dart';

class AppTheme{
  static const Color primary = Colors.indigo;

  static final ThemeData lightTheme = ThemeData.light().copyWith(
        //color primario
        primaryColor: primary,
        //TextButtons
        textButtonTheme: TextButtonThemeData(
          style: TextButton.styleFrom( primary: primary)
          ),
        //AppBar theme
        appBarTheme: const AppBarTheme(
          color: primary,
          elevation: 0,
        )
      );

  static final ThemeData darkTheme = ThemeData.dark().copyWith(
        //color primario
        primaryColor: primary,
        //AppBar theme
        appBarTheme: const AppBarTheme(
          color: primary,
          elevation: 0,
        )
      );

}