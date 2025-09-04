import 'package:flutter/material.dart';

import '../constants/colors.dart';

class Footer extends StatelessWidget {
  const Footer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.maxFinite,
      padding: EdgeInsets.symmetric(vertical: 20),
      alignment: Alignment.center,
      child: Text(
        'Made by Oluwagbolahan Alao with Flutter 3.32.4',
        style: TextStyle(color: whiteSecondary, fontWeight: FontWeight.w400),
      ),
    );
  }
}
