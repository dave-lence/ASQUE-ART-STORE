import 'package:asque_art_store/models/client_logic.dart';
import 'package:asque_art_store/screens/screens.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class SplashOrHome extends StatelessWidget {
  SplashOrHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<SignUpProvider>(
      builder: (context, user, child) {
        if (user.user) {
          // Render this widget when myBoolValue is true
          return HomeScreen();
        } else {
          // Render this widget when myBoolValue is false
          return OnboardingScreen();
        }
      },
    );
  }
}
