import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    super.key,
    this.onTap,required this.btnTitle
  });

  final Function()? onTap;
  final String btnTitle;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: 350,
       
        height: 40,
        decoration: BoxDecoration(         
          color: Color.fromARGB(255, 172, 113, 92,),
          borderRadius: BorderRadius.circular(8),
        ),
        child: Center(
            child: Text(
          btnTitle,
          style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 18),
        )),
      ),
    );
  }
}
