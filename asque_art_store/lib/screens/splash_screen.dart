import 'package:asque_art_store/screens/onboarding_screen.dart';
import 'package:flutter/material.dart';
import 'package:tbib_splash_screen/splash_screen_view.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  
   bool isLoaded = false;
  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(seconds: 10)).then((value) => setState(() {
          isLoaded = true;
        }));
  }


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SplashScreenView(
        navigateWhere: isLoaded,
        duration: Duration(seconds: 8),
        navigateRoute: OnboardingScreen(),
        pageRouteTransition: PageRouteTransition.CupertinoPageRoute,
        backgroundColor: Colors.black,
             
       imageSrc:  "assets/splash.png",
        //  displayLoading: false,
      ),
    );
  }
}