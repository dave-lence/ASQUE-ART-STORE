import 'package:flutter/material.dart';

class CustomAppTheme {
   Color primary = const Color.fromARGB(255, 172, 113, 92,);
   Color secondary = const Color.fromRGBO(73, 204, 249, 1);
   Color appPink = const Color.fromRGBO(253, 113, 175, 1);
   Color appYello = const Color.fromRGBO(255, 200, 0, 1);
   Color appBlack =  Colors.black;
   Color appWhite = Colors.white;
}



final customTheme = ThemeData(
  primaryColor: Colors.purple, // Define your primary color
  hintColor: Colors.lightBlue, // Define your accent color
  
  backgroundColor: Colors.grey.shade100, // Define background color
  textTheme: TextTheme(
    headline1: TextStyle(fontSize: 32.0, fontWeight: FontWeight.bold, color: Colors.black),
    headline2: TextStyle(fontSize: 28.0, fontWeight: FontWeight.bold, color: Colors.black),
    headline3: TextStyle(fontSize: 24.0, fontWeight: FontWeight.bold, color: Colors.black),
    bodyText1: TextStyle(fontSize: 16.0, color: Colors.black),
    bodyText2: TextStyle(fontSize: 14.0, color: Colors.grey),
  ),
);


