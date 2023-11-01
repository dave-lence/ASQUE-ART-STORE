import 'package:flutter/material.dart';

class OutlineBtn extends StatelessWidget {
  const OutlineBtn({
    super.key,
    required this.btnLabel
  });

  final String btnLabel;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        style: ElevatedButton.styleFrom(
          minimumSize: Size(322, 40),
          backgroundColor: Colors.black,
          side: BorderSide(
              color: Color.fromARGB(255, 172, 113, 92,)),
        ),
        onPressed: () {},
        child: Text(
          btnLabel,
          style: TextStyle(fontWeight: FontWeight.bold),
        ));
  }
}
