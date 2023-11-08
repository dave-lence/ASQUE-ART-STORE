import 'package:asque_art_store/config/theme.dart';
import 'package:asque_art_store/models/client_logic.dart';
import 'package:asque_art_store/screens/screens.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key, });

  // This widget is the root of your application.

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
     
      create: (context) => ClientProvider(),
      child: MaterialApp(
        theme: lightMode,
        darkTheme: darkMode,
        debugShowCheckedModeBanner: false,
        title: 'Asque Art Store',
        
        home: SplashScreen(),
      ),
    );
  }
}

