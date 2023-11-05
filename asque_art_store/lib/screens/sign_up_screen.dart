import 'package:asque_art_store/components/components.dart';
import 'package:asque_art_store/navigation/bottom_nav_bar.dart';
import 'package:asque_art_store/screens/screens.dart';
import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  final userNameController = TextEditingController();
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final confirmPasswordController = TextEditingController();

  bool passVisibility = false;
  bool confirmPassVisibility = false;
  bool isChecked = false;
  bool isLoading = false;
  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Center(
            child: Column(
              children: <Widget>[
                const SizedBox(
                  height: 50,
                ),

                //top text
                const Text(
                  "ASQUE",
                  style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                ),
                const SizedBox(
                  height: 30,
                ),

                // sign up text
                const Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      "Sign Up",
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w500,
                          color: Colors.white),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 15,
                ),

                /// text fields
                /// user name field
                CustomTextField(
                    iconName: const Icon(
                      Icons.person_rounded,
                      color: Colors.white,
                    ),
                    controller: userNameController,
                    hintText: "Username",
                    obscureText: false),
                const SizedBox(
                  height: 15,
                ),

                // email field
                CustomTextField(
                    iconName: const Icon(
                      Icons.mail,
                      color: Colors.white,
                    ),
                    controller: emailController,
                    hintText: "Email",
                    obscureText: false),
                const SizedBox(
                  height: 15,
                ),
                // password field
                CustomTextField(
                    iconName: const Icon(
                      Icons.lock,
                      color: Colors.white,
                    ),
                    controller: passwordController,
                    hintText: "Create password",
                    suffixIcon: IconButton(
                      icon: passVisibility
                          ? const Icon(Icons.visibility_off)
                          : const Icon(Icons.visibility),
                      color: Colors.white,
                      onPressed: () {
                        setState(() {
                          passVisibility = !passVisibility;
                        });
                      },
                    ),
                    obscureText: passVisibility ? false : true),
                const SizedBox(
                  height: 15,
                ),

                //confirm password
                CustomTextField(
                    iconName: const Icon(
                      Icons.lock,
                      color: Colors.white,
                    ),
                    controller: confirmPasswordController,
                    hintText: "Confirm password",
                    suffixIcon: IconButton(
                      icon: confirmPassVisibility
                          ? const Icon(Icons.visibility_off)
                          : const Icon(Icons.visibility),
                      color: Colors.white,
                      onPressed: () {
                        setState(() {
                          confirmPassVisibility = !confirmPassVisibility;
                        });
                      },
                    ),
                    obscureText: confirmPassVisibility ? false : true),

                // check box and terms and condition
                const SizedBox(height: 32),
                Row(
                  children: <Widget>[
                    Container(
                      height: 20,
                      width: 20,
                      decoration: BoxDecoration(
                          borderRadius:
                              const BorderRadius.all(Radius.circular(1)),
                          border: Border.fromBorderSide(BorderSide(
                              width: 0.2, color: Colors.grey.shade400))),
                      child: Checkbox(
                        activeColor: const Color.fromARGB(
                          255,
                          172,
                          113,
                          92,
                        ),
                        checkColor: Colors.white,
                        value: isChecked,
                        onChanged: (value) {
                          setState(() {
                            isChecked = !isChecked;
                          });
                        },
                      ),
                    ),
                    const SizedBox(
                      width: 15,
                    ),
                    const Text(
                      'I agree to the privacy terms and condition ',
                      style: TextStyle(color: Colors.white),
                    )
                  ],
                ),
                // sign up button
                const SizedBox(
                  height: 25,
                ),
                 CustomButton(btnTitle: 'Sign Up', onTap: () {
                    Navigator.push(
                                context,
                                PageTransition(
                                    type: PageTransitionType.rightToLeft,
                                    duration: const Duration(seconds: 1),
                                    child:  const BottomNavBar()));
                },),

                // other options
                const SizedBox(
                  height: 68,
                ),
                // or sign up with
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 1.0),
                  child: Row(
                    children: [
                      Expanded(
                        child: Divider(
                          thickness: 0.5,
                          color: Colors.grey.shade600,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10),
                        child: Text(
                          "Or Sign up with",
                          style: TextStyle(color: Colors.grey.shade700),
                        ),
                      ),
                      Expanded(
                        child: Divider(
                          thickness: 0.5,
                          color: Colors.grey.shade600,
                        ),
                      ),
                    ],
                  ),
                ),

                // google and face book options
                const SizedBox(
                  height: 50,
                ),
                Container(
                  width: 350,
                  padding: const EdgeInsets.all(8),
                  height: 40,
                  decoration: BoxDecoration(
                    border: Border.fromBorderSide(
                        BorderSide(color: Colors.grey.shade400, width: 0.5)),
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Image.asset(
                        'assets/google.png',
                        width: 24,
                      ),
                      const SizedBox(
                        width: 8,
                      ),
                      const Text(
                        "Sign Up with Google",
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 18),
                      ),
                    ],
                  ),
                ),

                /// facebook sign up
                const SizedBox(
                  height: 17,
                ),
                Container(
                  width: 350,
                  padding: const EdgeInsets.all(8),
                  height: 40,
                  decoration: BoxDecoration(
                    border: Border.fromBorderSide(
                        BorderSide(color: Colors.grey.shade400, width: 0.5)),
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Image.asset(
                        'assets/facebook.png',
                        width: 24,
                      ),
                      const SizedBox(
                        width: 8,
                      ),
                      const Text(
                        "Sign Up with Facebook",
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 18),
                      ),
                    ],
                  ),
                ),


                // already a user text
                const SizedBox(
                  height: 20,
                ),
                 Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text('Already a user?', style: TextStyle(color: Colors.white),
                    
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.push(
                                context,
                                PageTransition(
                                    type: PageTransitionType.bottomToTop,
                                    curve: Curves.bounceOut,
                                    duration: const Duration(seconds: 2),
                                    child: const SignInScreen()));
                      },
                      child: const Text("Sign In here", style: TextStyle(color:Color.fromARGB(255, 172, 113, 92,),),))
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
