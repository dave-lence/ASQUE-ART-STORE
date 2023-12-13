import 'dart:convert';
import 'package:asque_art_store/models/sign_up_model.dart';
import 'package:http/http.dart' as http;
import 'package:another_flushbar/flushbar.dart';
import 'package:asque_art_store/components/components.dart';
import 'package:asque_art_store/config/theme.dart';
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

  /// function to sign  user up
  void signUpFunction(BuildContext contex) async {
    setState(() {
      isLoading = true;
    });

    SignUpModel userData = SignUpModel(
        email: emailController.text.trim(),
        username: userNameController.text.trim(),
        password: passwordController.text.trim(),
        confirmPassword: confirmPasswordController.text.trim());

    final apiUri = Uri.parse(
        'https://asque-media-development.onrender.com/api/v1/auth/register');

    try {
      final response = await http.post(apiUri,
          headers: {'Content-Type': 'application/json'},
          body: jsonEncode(userData.toJson()));

      if (response.statusCode == 201) {
        setState(() {
          isLoading = false;
        });
        ScaffoldMessenger.of(context).showSnackBar(SnackBar(
          closeIconColor: Colors.white,
          elevation: 8,
          showCloseIcon: true,
          duration: const Duration(seconds: 10),
          content: Text("Hello ${userNameController.text}, welcome on board!"),
          backgroundColor: CustomAppTheme()
              .primary, // Set the background color to red for error messages
        ));
        Navigator.pushReplacement(
          context,
          PageTransition(
            duration: const Duration(seconds: 1),
            type: PageTransitionType.rightToLeft,
            child: const BottomNavBar(),
          ),
        );
      } else {
        setState(() {
          isLoading = false;
        });

        //   print(response.body);

        Map<String, dynamic> responseMap = jsonDecode(response.body.toString());
        List<dynamic> errorMessages = responseMap['message'];

        errorMessages.forEach((message) {
          return showFlushbar(
              context,
              'Sign Up error',
              Colors.black,
              message,
              Icon(
                Icons.error,
                color: Colors.black,
              ),
              Colors.black,
              Colors.orange);
        });
      }
    } catch (error) {
      setState(() {
        isLoading = false;
      });

      showFlushbar(
          context,
          'Sign Up error',
          Colors.black,
          'Make sure your credentials are inputed well and your password match',
          Icon(
            Icons.error,
            color: Colors.black,
          ),
          Colors.black,
          Colors.orange);
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
                    fillColor: false,
                      iconName: const Icon(
                        Icons.email,
                        color: Colors.white,
                      ),
                      controller: emailController,
                      hintText: "Email",
                      obscureText: false),
                  const SizedBox(
                    height: 15,
                  ),

                  // email field
                  CustomTextField(
                    fillColor: false,
                      iconName: const Icon(
                        Icons.person,
                        color: Colors.white,
                      ),
                      controller: userNameController,
                      hintText: "User Name",
                      obscureText: false),
                  const SizedBox(
                    height: 15,
                  ),
                  // password field
                  CustomTextField(
                    fillColor: false,
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
                    fillColor: false,
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
                  CustomButton(
                      btnTitle: 'Sign Up',
                      onTap: () => signUpFunction(context)),

                  const SizedBox(
                    height: 20,
                  ),
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
                      const Text(
                        'Already a user?',
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
                                    duration: const Duration(milliseconds: 500),
                                    child: const SignInScreen()));
                          },
                          child: Text(
                            "Sign In here",
                            style: TextStyle(color: CustomAppTheme().primary),
                          )),
                      SizedBox(
                        height: 50,
                      )
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

  // flush bar
  void showFlushbar(BuildContext context, String title, Color titleColor,
      String message, Icon icon, Color messageColor, Color backgroundColor) {
    Flushbar(
      title: title,
      titleColor: titleColor,
      message: message,
      icon: icon,
      flushbarStyle: FlushbarStyle.FLOATING,
      duration: Duration(seconds: 6),
      animationDuration: Duration(seconds: 1),
      dismissDirection: FlushbarDismissDirection.HORIZONTAL,
      forwardAnimationCurve: Curves.bounceInOut,
      flushbarPosition: FlushbarPosition.TOP,
      borderRadius: BorderRadius.circular(5),
      backgroundColor: backgroundColor,
      margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
      messageColor: messageColor,
      boxShadows: [
        BoxShadow(
            color: CustomAppTheme().appBlack,
            offset: Offset(2, 4),
            blurRadius: 10)
      ],
    )..show(context);
  }
}
