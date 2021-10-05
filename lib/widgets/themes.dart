import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:velocity_x/velocity_x.dart';

class MyTheme {
  static ThemeData lightTheme(BuildContext context) => ThemeData(
      cardColor: Colors.white,
      canvasColor: creamColor,
      colorScheme: ColorScheme(
        primary: Colors.red,
        onPrimary: Colors.black,
        primaryVariant: Colors.orange,
        background: Colors.red,
        onBackground: Colors.black,
        secondary: darkBluishColor,
        onSecondary: darkBluishColor,
        secondaryVariant: Colors.deepOrange,
        error: Colors.black,
        onError: Colors.white,
        surface: Colors.white,
        onSurface: Colors.black,
        brightness: Brightness.light,
      ),
      floatingActionButtonTheme:
          FloatingActionButtonThemeData(backgroundColor: darkBluishColor),
      fontFamily: GoogleFonts.poppins().fontFamily,
      appBarTheme: AppBarTheme(
          color: Colors.white,
          elevation: 0.0,
          iconTheme: IconThemeData(color: Colors.black),
          titleTextStyle: TextStyle(color: Colors.black, fontSize: 20)));

  static ThemeData darkTheme(BuildContext context) => ThemeData(
      primarySwatch: Colors.red,
      cardColor: Colors.black,
      canvasColor: darkcreamColor,
      colorScheme: ColorScheme(
        primary: Colors.red,
        onPrimary: Colors.black,
        primaryVariant: Colors.orange,
        background: Colors.red,
        onBackground: Colors.black,
        secondary: Colors.white,
        onSecondary: lightBluishColor,
        secondaryVariant: Colors.deepOrange,
        error: Colors.black,
        onError: Colors.white,
        surface: Colors.white,
        onSurface: Colors.black,
        brightness: Brightness.dark,
      ),
      floatingActionButtonTheme:
          FloatingActionButtonThemeData(backgroundColor: lightBluishColor),
      fontFamily: GoogleFonts.poppins().fontFamily,
      appBarTheme: AppBarTheme(
          color: Colors.white,
          elevation: 0.0,
          iconTheme: IconThemeData(color: Colors.white),
          titleTextStyle: TextStyle(color: Colors.white, fontSize: 20)));

  //colors
  static Color creamColor = Color(0xf5f5f5f5);
  static Color darkBluishColor = Color(0xff403b58);
  static Color darkcreamColor = Vx.gray900;
  static Color lightBluishColor = Vx.indigo500;
}
