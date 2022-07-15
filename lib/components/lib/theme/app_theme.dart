import 'package:flutter/material.dart';

class AppTheme {
  static const primary = Colors.indigo;

  static final ThemeData lightTheme = ThemeData.light().copyWith(
    //Color Primario
    primaryColor: primary,
    //Color AppBar
    appBarTheme: const AppBarTheme(color: primary, elevation: 0),
    textButtonTheme:
        TextButtonThemeData(style: TextButton.styleFrom(primary: primary)),
    floatingActionButtonTheme:
        const FloatingActionButtonThemeData(backgroundColor: primary),
    elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
      primary: AppTheme.primary,
      shape: const StadiumBorder(),
      elevation: 0,
    )),
    inputDecorationTheme: const InputDecorationTheme(
        floatingLabelStyle: TextStyle(color: primary),
        //enableBorder es cuado esta activado el texto
        //focusedBorder es cuando esta desactivado
        //border es la forma mas basica de los anteriores
        enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(color: primary),
            borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(10),
                topRight: Radius.circular(10))),
        focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: primary),
            borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(10),
                topRight: Radius.circular(10))),
        border: OutlineInputBorder(
            borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(10),
                topRight: Radius.circular(10)))),
  );

  static final ThemeData darkTheme = ThemeData.dark().copyWith(

      //Color Primario
      primaryColor: primary,
      //Color AppBar
      appBarTheme: const AppBarTheme(color: primary, elevation: 0),
      textButtonTheme:
          TextButtonThemeData(style: TextButton.styleFrom(primary: primary)),
      floatingActionButtonTheme:
          const FloatingActionButtonThemeData(backgroundColor: primary),
      scaffoldBackgroundColor: Colors.black,
      elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
        primary: AppTheme.primary,
        shape: const StadiumBorder(),
        elevation: 0,
      )),
      inputDecorationTheme: const InputDecorationTheme(
          floatingLabelStyle: TextStyle(color: primary),
          //enableBorder es cuado esta activado el texto
          //focusedBorder es cuando esta desactivado
          //border es la forma mas basica de los anteriores
          enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(color: primary),
              borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(10),
                  topRight: Radius.circular(10))),
          focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(color: primary),
              borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(10),
                  topRight: Radius.circular(10))),
          border: OutlineInputBorder(
              borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(10),
                  topRight: Radius.circular(10)))));

  /* static ButtonStylePersonal({colorsButton}) {
    return TextButton.styleFrom(primary: colorsButton);
  }
  esto seria creacion de widgets
  */

}
