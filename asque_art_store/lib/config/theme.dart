import 'package:flutter/material.dart';

class CustomAppTheme {
   Color primary = const Color.fromARGB(255, 172, 113, 92,);
   Color secondary = const Color.fromRGBO(73, 204, 249, 1);
   Color appPink = const Color.fromRGBO(253, 113, 175, 1);
   Color appYello = const Color.fromRGBO(255, 200, 0, 1);
   Color appBlack =  Colors.black;
   Color appWhite = Colors.white;
}


ThemeData lightMode  = ThemeData(
  brightness: Brightness.light,
  colorScheme: ColorScheme.light(
    background: Colors.white,
    primary: Colors.black,
    secondary: Colors.grey.shade400,
  )
);
ThemeData darkMode  = ThemeData(
  brightness: Brightness.dark,
  colorScheme: ColorScheme.dark(
    background: Colors.grey.shade800,
    primary: Colors.white,
    secondary: Colors.grey.shade400,

  )
);





