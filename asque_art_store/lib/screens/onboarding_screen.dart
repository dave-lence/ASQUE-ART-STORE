import 'package:asque_art_store/components/components.dart';
import 'package:asque_art_store/config/theme.dart';
import 'package:asque_art_store/screens/screens.dart';
import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({super.key});

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  final _controller = PageController();
  int _currentPage = 0;

  final List<Map<String, String>> splashData = [
    {
      "title": "Share!",
      "subtitle": "Share contents with friends and family",
      "image": "assets/onboardBox-1.png"
    },
    {
      "title": "Shop!",
      "subtitle":
          "Access the essence of Africa through \n affordable art treasure",
      "image": "assets/onboarding-1.png"
    },
    {
      "title": "Media",
      "subtitle":
          "Explore Africa’s cultural, social and  societal \n landscape at your pace.",
      "image": "assets/onboarding-2.png"
    },
    {
      "title": "Earn!",
      "subtitle":
          "Earn while at it by inviting friends and family\n to this experience",
      "image": "assets/onboarding-3.png"
    },
  ];

  AnimatedContainer _buildDots({int? index}) {
    return AnimatedContainer(
      duration: const Duration(milliseconds: 200),
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.all(
          Radius.circular(10),
        ),
        color: Color.fromARGB(
          255,
          172,
          113,
          92,
        ),
      ),
      margin: const EdgeInsets.only(right: 5),
      height: 10,
      curve: Curves.easeIn,
      width: _currentPage == index ? 20 : 7,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: Column(
          children: <Widget>[
            Expanded(
              flex: 3,
              child: PageView.builder(
                controller: _controller,
                itemCount: splashData.length,
                itemBuilder: (BuildContext context, int index) {
                  return Column(
                    children: <Widget>[
                      const SizedBox(
                        height: 30.0,
                      ),
                      const SizedBox(
                        height: 30.0,
                      ),
                      AspectRatio(
                        aspectRatio: 12 / 9,
                        child: Image.asset(
                          splashData[index]['image']!,
                          fit: BoxFit.contain,
                        ),
                      ),
                      const SizedBox(
                        height: 30.0,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(bottom: 15.0),
                        child: Text(
                          splashData[index]['title']!,
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontFamily: "Sofia",
                            fontSize: 20,
                            fontWeight: FontWeight.w800,
                            color: CustomAppTheme().primary,
                          ),
                        ),
                      ),
                      Text(
                        splashData[index]['subtitle']!,
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontFamily: "Sofia",
                          fontSize: 15,
                          color: CustomAppTheme().appWhite,
                          height: 1.5,
                        ),
                      ),
                      const SizedBox(
                        height: 30.0,
                      ),
                    ],
                  );
                },
                onPageChanged: (value) => setState(() => _currentPage = value),
              ),
            ),
            Expanded(
              flex: 1,
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.only(top: 40.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: List.generate(
                          splashData.length,
                          (int index) => _buildDots(index: index),
                        ),
                      ),
                    ),
                    const Spacer(),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 40.0),
                      child: SizedBox(
                        height: 45,
                        width: MediaQuery.of(context).size.width,
                        child: ElevatedButton(
                          onPressed: () {
                            Navigator.push(
                                context,
                                PageTransition(
                                    type: PageTransitionType.rightToLeft,
                                    duration: const Duration(seconds: 2),
                                    child: const SignUpScreen()));
                          },
                          child: const Text(
                            'Sign Up',
                            style: TextStyle(
                              fontSize: 14,
                              fontFamily: "Sofia",
                              color: Colors.white,
                            ),
                          ),
                          style: ElevatedButton.styleFrom(
                              backgroundColor: CustomAppTheme().primary,
                              elevation: 6,
                              animationDuration: const Duration(seconds: 3)),
                        ),
                      ),
                    ),
                    const Spacer(),
                    Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 40.0),
                        child: OutlineBtn(
                          btnLabel: 'Sign In',
                          onTap: () {
                            Navigator.push(
                                context,
                                PageTransition(
                                    type: PageTransitionType.rightToLeft,
                                    duration: const Duration(seconds: 2),
                                    child: const SignInScreen()));
                          },
                        )),
                    const Spacer()
                  ]),
            ),
          ],
        ),
      ),
    );
  }
}
