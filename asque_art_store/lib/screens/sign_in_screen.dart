import 'package:asque_art_store/components/components.dart';
import 'package:asque_art_store/config/theme.dart';
import 'package:asque_art_store/models/client_logic.dart';
import 'package:asque_art_store/navigation/bottom_nav_bar.dart';
import 'package:asque_art_store/screens/screens.dart';
import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';
import 'package:provider/provider.dart';

class SignInScreen extends StatefulWidget {
  const SignInScreen({super.key});

  @override
  State<SignInScreen> createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  bool passVisibility = false;
  bool isLoading = false;

  void signInFunction(BuildContext context) async {
    setState(() {
      isLoading = true;
    });

    final signInProvider = Provider.of<ClientProvider>(context, listen: false);
    final result = await signInProvider.signIn(
        emailController.text, passwordController.text);

    await Future.delayed(const Duration(seconds: 5));
    if (result == 'success') {
      ScaffoldMessenger.of(context).showSnackBar(SnackBar(
        closeIconColor: Colors.white,
        elevation: 8,
        showCloseIcon: true,
        duration: const Duration(seconds: 10),
        content: const Text("Welcome back!, you\'ve been missed"),
        backgroundColor: CustomAppTheme()
            .primary, // Set the background color to red for error messages
      ));
      Navigator.of(context).pushAndRemoveUntil(
        PageTransition(
          duration: const Duration(seconds: 1),
          type: PageTransitionType.rightToLeft,
          child: const BottomNavBar(),
        ),
        (Route<dynamic> route) => false,
      );
    } else {
      ScaffoldMessenger.of(context).showSnackBar(SnackBar(
        duration: const Duration(seconds: 15),
        closeIconColor: Colors.white,
        elevation: 8,
        showCloseIcon: true,
        content: Text(result),
        backgroundColor:
            Colors.red, // Set the background color to red for error messages
      ));

      setState(() {
        isLoading = false;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SingleChildScrollView(
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Center(
              child: Column(
                children: <Widget>[
                  isLoading
                      ? LinearProgressIndicator(
                          backgroundColor: Colors.grey,
                          color: CustomAppTheme().primary,
                        )
                      : const SizedBox.shrink(),

                  const SizedBox(
                    height: 150,
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
                        "Sign In",
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
                      hintText: "Enter your password",
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
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text(
                        'Forgot password?',
                        style: TextStyle(color: Colors.grey.shade400),
                      )
                    ],
                  ),

                  // sign up button
                  const SizedBox(
                    height: 25,
                  ),
                  CustomButton(
                      btnTitle: 'Sign In',
                      onTap: () => signInFunction(context)),

                  // other options
                  const SizedBox(
                    height: 98,
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
                            "Or Sign In with",
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
                          "Sign In with Google",
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
                          "Sign In with Facebook",
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 18),
                        ),
                      ],
                    ),
                  ),

                  // a new user text
                  const SizedBox(
                    height: 40,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text(
                        'Are you a user?',
                        style: TextStyle(color: Colors.white),
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
                                    child: const SignUpScreen()));
                          },
                          child: const Text(
                            "Sign Up here",
                            style: TextStyle(
                              color: Color.fromARGB(
                                255,
                                172,
                                113,
                                92,
                              ),
                            ),
                          ))
                    ],
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
