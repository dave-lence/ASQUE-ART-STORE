import 'package:asque_art_store/components/components.dart';
import 'package:asque_art_store/components/onboarding_carousel_card.dart';
import 'package:asque_art_store/models/slider_models.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({super.key});

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(
            height: 50,
          ),
          Center(
            child: CarouselSlider(
              
                options: CarouselOptions(
                    aspectRatio: 0.6,
                    autoPlay: true,
                    viewportFraction: 1.5,
                    enlargeCenterPage: true,
                    enlargeStrategy: CenterPageEnlargeStrategy.height),
                items: SliderItems.slides
                    .map((slide) => OnboardingCarouselCard(
                          sliderItems: slide,
                        ))
                    .toList()),
          ),
          Column(
            children: <Widget>[
              ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      minimumSize: Size(322, 40),
                      backgroundColor: Color.fromARGB(
                        255,
                        172,
                        113,
                        92,
                      )),
                  onPressed: () {},
                  child: Text(
                    "Sign Up",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  )),
              SizedBox(
                height: 10,
              ),
              OutlineBtn(btnLabel: 'Sign In')
            ],
          )
        ],
      ),
    );
  }
}
