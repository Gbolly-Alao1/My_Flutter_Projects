import 'package:flutter/material.dart';
import 'constants.dart';

class ReColumn extends StatelessWidget {
  const ReColumn({super.key, required this.icon, required this.text});

  final IconData icon;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(icon, size: 80.0, color: Colors.white),
        SizedBox(height: 15.0),
        Text(text, style: kLabelTextStyle),
      ],
    );
  }
}
