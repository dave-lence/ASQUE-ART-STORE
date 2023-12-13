import 'package:flutter/material.dart';

class PaymentCard extends StatelessWidget {
  const PaymentCard({super.key, required this.imagePath, this.cardColor = Colors.grey});

  final String imagePath;
  final cardColor;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      height: 100,
      width: 100,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: cardColor,
        boxShadow: [
          BoxShadow(
            color: Colors.black,
            offset: Offset(2, 5),
            blurRadius: 8,
            blurStyle: BlurStyle.solid
          )
        ]
      ),
      child: Image.asset(imagePath, width: 50, height: 50,),
    );
  }
}