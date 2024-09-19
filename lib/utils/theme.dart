import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

final ThemeData appTheme = ThemeData(
  scaffoldBackgroundColor: Colors.white,
  textTheme: GoogleFonts.latoTextTheme(),
  appBarTheme: const AppBarTheme(backgroundColor: Colors.white),
  drawerTheme: const DrawerThemeData(backgroundColor: Colors.white),
  textButtonTheme: TextButtonThemeData(
    style: ButtonStyle(
      foregroundColor: const WidgetStatePropertyAll(Colors.black),
      textStyle: WidgetStatePropertyAll(
        GoogleFonts.lato(fontSize: 18, fontWeight: FontWeight.bold),
      ),
    ),
  ),
  elevatedButtonTheme: ElevatedButtonThemeData(
    style: ButtonStyle(
      textStyle: WidgetStatePropertyAll(GoogleFonts.lato(fontSize: 22)),
      backgroundColor: const WidgetStatePropertyAll(Colors.black),
      foregroundColor: const WidgetStatePropertyAll(Colors.white),
      padding: const WidgetStatePropertyAll(EdgeInsets.all(10)),
      shape: WidgetStatePropertyAll(RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      )),
    ),
  ),
);
