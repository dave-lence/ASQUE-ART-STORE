
import 'package:flutter/material.dart';


class OutlineBtn extends StatelessWidget {
  const OutlineBtn({super.key, required this.btnLabel, required this.onTap});

  final String btnLabel;
  final Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        style: ElevatedButton.styleFrom(
          minimumSize: Size(322, 40),
          backgroundColor: Colors.black,
          side: BorderSide(
              color: Color.fromARGB(
            255,
            172,
            113,
            92,
          )),
        ),
        onPressed: onTap,
        child: Text(
          btnLabel,
          style: TextStyle(fontWeight: FontWeight.bold),
        ));
  }
}
