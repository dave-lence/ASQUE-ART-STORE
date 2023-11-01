import 'package:flutter/material.dart';

class SrctionTile extends StatelessWidget {
  const SrctionTile({
    super.key,
    required this.title
  });

 final String title;

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
     
      style: TextStyle(

          color: Colors.white,
          fontWeight: FontWeight.bold,
          fontSize: 16),
    );
  }
}
