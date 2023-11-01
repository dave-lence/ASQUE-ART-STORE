import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  CustomTextField(
      {super.key,
      required this.iconName,
      required this.controller,
      required this.hintText,
      required this.obscureText,
      this.suffixIcon});

  final iconName;
  final controller;
  final String hintText;
  final bool obscureText;
 final IconButton? suffixIcon;

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      cursorColor: const Color.fromARGB(
        255,
        172,
        113,
        92,
      ),
      obscureText: obscureText,
      style: const TextStyle(color: Colors.white),
      decoration: InputDecoration(
      
        suffixIcon: suffixIcon,
        prefixIcon: iconName,
        hintText: hintText,
        filled: true,
        fillColor: Color.fromARGB(255, 59, 56, 56),
        hintStyle: TextStyle(color: Colors.grey.shade400),
        enabledBorder: OutlineInputBorder(
            borderRadius: const BorderRadius.all(Radius.circular(8)),
            borderSide: BorderSide(color: Color.fromARGB(255, 59, 56, 56), width: 0.5)),
        focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8),
            borderSide: const BorderSide(
                color: Color.fromARGB(255, 59, 56, 56),)),
      ),
    );
  }
}
