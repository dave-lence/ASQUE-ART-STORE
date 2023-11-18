import 'package:asque_art_store/config/theme.dart';
import 'package:asque_art_store/models/client_logic.dart';
import 'package:asque_art_store/models/prefrences_service.dart';
import 'package:asque_art_store/providers/cart_provider.dart';
import 'package:asque_art_store/providers/favourite_provider.dart';
import 'package:asque_art_store/screens/screens.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await PreferencesService.init();
  Provider.debugCheckInvalidValueType = null;
  runApp(MultiProvider(providers: [
    Provider(create: (_) => CartProvider()),
    Provider(create: (_) => FavProvider())
  ], child: const MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({
    super.key,
  });

  // This widget is the root of your application.

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: lightMode,
      darkTheme: darkMode,
      debugShowCheckedModeBanner: false,
      title: 'Asque Art Store',
      home: SplashScreen(),
    );
  }
}
