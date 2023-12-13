import 'package:asque_art_store/config/theme.dart';
import 'package:asque_art_store/navigation/bottom_nav_bar.dart';
import 'package:flutter/material.dart';

class PaymentSuccessful extends StatelessWidget {
  const PaymentSuccessful({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
            'assets/Animation - 1700360140594.gif',
            height: 200,
            width: 300,
          ),
          const Text(
            'Payment Successfull 🎉',
            style: TextStyle(
                color: Colors.white, fontWeight: FontWeight.bold, fontSize: 20),
          )
        ],
      )),
      backgroundColor: Colors.grey.shade800,
      bottomNavigationBar: Container(
        color: Colors.grey.shade800,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
          child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                  elevation: 8,
                  fixedSize: Size(MediaQuery.of(context).size.width, 40),
                  backgroundColor: CustomAppTheme().primary,
                  enableFeedback: true,
                  shape: ContinuousRectangleBorder(
                      borderRadius: BorderRadius.circular(10))),
              onPressed: () {
                Navigator.pushReplacement(context,
                    MaterialPageRoute(builder: (context) => const BottomNavBar()));
              },
              child: const Text(
                'Continue to store',
                style: TextStyle(color: Colors.white),
              )),
        ),
      ),
    );
  }
}
