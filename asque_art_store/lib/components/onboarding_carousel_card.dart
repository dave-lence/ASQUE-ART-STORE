import 'package:asque_art_store/models/slider_models.dart';
import 'package:flutter/material.dart';

class OnboardingCarouselCard extends StatelessWidget {
  const OnboardingCarouselCard({super.key, required this.sliderItems});

  final SliderItems sliderItems;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Image.asset(
            sliderItems.imgUrl,
            height: 400,
            width: 300,
          ),
          SizedBox(
            height: 39,
          ),
          Center(
            child: Text(
              sliderItems.label,
              style: TextStyle(
                color: const Color.fromARGB(255, 172, 113, 92),
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 50),
            child: Text(
              sliderItems.description,
              maxLines: 2,
                            textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.white,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
