import 'package:flutter/material.dart';

ThemeData theme() {
  return ThemeData(
    scaffoldBackgroundColor: Colors.white,
    fontFamily: "Avenir",
    textTheme: textTheme(),
    colorScheme: colorTheme()
  );
}

ColorScheme colorTheme(){
  return const ColorScheme(
    onSurface: Colors.black,
    error: Colors.orange,
    onError: Colors.orange,
    surface: Colors.black,
    onBackground: Colors.black,
    background: Color.fromARGB(255, 172, 113, 92,),
    onSecondary: Color.fromARGB(255, 172, 113, 92,),
    secondary: Color.fromARGB(255, 172, 113, 92,),
    onPrimary: Color.fromARGB(255, 172, 113, 92,),
    brightness: Brightness.dark,
    primary: Color.fromARGB(255, 172, 113, 92,)
    );
}

TextTheme textTheme() {
  return const TextTheme(
    headline1: TextStyle(
      color: Colors.black,
      fontWeight: FontWeight.bold,
      fontSize: 36,
    ),
    headline2: TextStyle(
      color: Colors.black,
      fontWeight: FontWeight.bold,
      fontSize: 22,
    ),
    headline3: TextStyle(
      color: Colors.black,
      fontWeight: FontWeight.bold,
      fontSize: 18,
    ),
    headline4: TextStyle(
      color: Colors.black,
      fontWeight: FontWeight.bold,
      fontSize: 16,
    ),
    headline5: TextStyle(
      color: Colors.black,
      fontWeight: FontWeight.bold,
      fontSize: 14,
    ),
    headline6: TextStyle(
      color: Colors.black,
      fontWeight: FontWeight.normal,
      fontSize: 14,
    ),
    bodyText1: TextStyle(
      color: Colors.black,
      fontWeight: FontWeight.normal,
      height: 1.75,
      fontSize: 12,
    ),
    bodyText2: TextStyle(
      color: Colors.black,
      fontWeight: FontWeight.normal,
      fontSize: 10,
    ),
  );
}