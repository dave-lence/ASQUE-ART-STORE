import 'package:equatable/equatable.dart';

class SliderItems extends Equatable{
final String label;
final String imgUrl;
final String description;

const SliderItems({required this.label, required this.imgUrl, required this.description});


  @override
  List<Object?> get props => [label, imgUrl, description];

  static List<SliderItems> slides = [
    SliderItems(
      label: 'Share!',
      imgUrl: 'assets/onboardBox-1.png', 
      description: " Share contents with friends and family"
    ),
    SliderItems(
      label: 'Shop!',
      imgUrl: 'assets/onboarding-1.png',
      description: "Access the essence of Africa through \n affordable art treasure"
    ),
    SliderItems(
      label: 'Media',
      imgUrl: 'assets/onboarding-2.png',
      description: "Explore Africa’s cultural, social and  societal \n landscape at your pace.  "
    ),
    SliderItems(
      label: 'Earn!',
      imgUrl: 'assets/onboarding-3.png',
      description: "Earn while at it by inviting friends and family\n to this experience"
    ),
    
  ];
}