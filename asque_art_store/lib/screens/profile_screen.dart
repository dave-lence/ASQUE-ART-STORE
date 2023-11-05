import 'package:asque_art_store/screens/cart_screen.dart';
import 'package:asque_art_store/screens/product_screen.dart';
import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});
  static bool isLight = false;

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade800,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.grey.shade800,
        leading: IconButton(
          icon: const Icon(Icons.logout_outlined),
          onPressed: () {},
        ),
        actions: [
          IconButton(
              onPressed: () {
                Navigator.push(
                    context,
                    PageTransition(
                      child: const CartScreen(),
                      duration: const Duration(seconds: 2),
                      type: PageTransitionType.rightToLeftWithFade,
                      alignment: Alignment.topCenter,
                    ));
              },
              icon: const Badge(
                backgroundColor: Colors.red,
                textColor: Colors.white,
                label: Text("5"),
                child: Icon(
                  Icons.shopping_cart,
                  color: Colors.white,
                ),
              ))
        ],
      ),
      body: SafeArea(
          child: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                // prifle image and name
                Center(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      ClipRRect(
                        borderRadius: BorderRadius.circular(40),
                        child: Image.asset(
                          "assets/profile.jpg",
                          fit: BoxFit.cover,
                          height: 80,
                          width: 80,
                        ),
                      ),
                      const Text(
                        "Name of user",
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 20),
                      ),
                      Text(
                        "useremail@gamil.com",
                        style: TextStyle(
                          color: Colors.orange.shade600,
                        ),
                      ),
                    ],
                  ),
                ),

                const SizedBox(
                  height: 40,
                ),
                const Text(
                  "My account",
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 20),
                ),
                const SizedBox(
                  height: 20,
                ),

                Container(
                  padding: const EdgeInsets.all(10),
                  width: double.infinity,
                  decoration: BoxDecoration(
                      color: Colors.grey.shade800,
                      boxShadow: [
                        const BoxShadow(
                            color: Colors.black,
                            offset: Offset(3, 5),
                            blurRadius: 8)
                      ],
                      borderRadius: BorderRadius.circular(20)),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      // order options
                      const Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Text(
                            "My order",
                            style: TextStyle(color: Colors.white),
                          ),
                          Icon(
                            Icons.arrow_circle_right,
                            color: Colors.white,
                          )
                        ],
                      ),

                      // saved items options
                      const SizedBox(
                        height: 20,
                      ),
                      const Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Text(
                            "Saved Art",
                            style: TextStyle(color: Colors.white),
                          ),
                          Icon(
                            Icons.arrow_circle_right,
                            color: Colors.white,
                          )
                        ],
                      ),

                      // recently viewed options
                      const SizedBox(
                        height: 20,
                      ),
                      const Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Text(
                            "Recently viewd",
                            style: TextStyle(color: Colors.white),
                          ),
                          Icon(
                            Icons.arrow_circle_right,
                            color: Colors.white,
                          )
                        ],
                      ),

                      // Dark mode options
                      const SizedBox(
                        height: 20,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          const Text(
                            "Switch to light mode",
                            style: TextStyle(color: Colors.white),
                          ),
                          Switch(
                            activeColor: Colors.orange.shade500,
                            value: ProfileScreen.isLight,
                            onChanged: (value) {
                              setState(() {
                                ProfileScreen.isLight = !ProfileScreen.isLight;
                              });
                            },
                          )
                        ],
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 40,
                ),
                const Text(
                  "My settings",
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 20),
                ),
                const SizedBox(
                  height: 20,
                ),
                Container(
                  padding: const EdgeInsets.all(10),
                  width: double.infinity,
                  decoration: BoxDecoration(
                      color: Colors.grey.shade800,
                      boxShadow: [
                        const BoxShadow(
                            color: Colors.black,
                            offset: Offset(3, 5),
                            blurRadius: 8)
                      ],
                      borderRadius: BorderRadius.circular(20)),
                  child: const Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      // Address options
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Text(
                            "Change address",
                            style: TextStyle(color: Colors.white),
                          ),
                          Icon(
                            Icons.arrow_circle_right,
                            color: Colors.white,
                          )
                        ],
                      ),

                      // Delete account
                      SizedBox(
                        height: 20,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Text(
                            "Delete Account",
                            style: TextStyle(color: Colors.white),
                          ),
                          Icon(
                            Icons.delete_outline_outlined,
                            color: Colors.white,
                          )
                        ],
                      ),
                    ],
                  ),
                ),
              ]),
        ),
      )),
    );
  }
}
