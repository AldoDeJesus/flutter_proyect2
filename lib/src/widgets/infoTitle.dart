import 'package:flutter/material.dart';

class Infotitle extends StatelessWidget {
  const Infotitle({super.key, required this.title, required this.subtitle});
  final String title;
  final String subtitle;

  @override
  Widget build(BuildContext context) {
    return  Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(title,
            style:const TextStyle(
              color: Colors.white,
              fontSize: 16.0,
              fontWeight: FontWeight.bold,
            )),
        const SizedBox(height: 5.0,),
        Text(subtitle,
            style:const TextStyle(
              color: Colors.white70,
              fontSize: 12.0,
              fontWeight: FontWeight.normal,
            )),
      ],
    );
  }
}