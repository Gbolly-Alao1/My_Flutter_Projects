import 'package:flutter/material.dart';

import '../constants/colors.dart';
import '../pages/home_page.dart';

class MainMobile extends StatelessWidget {
  const MainMobile({
    super.key,
    required this.screenHeight,
    required this.screenWidth,
  });

  final double screenHeight;
  final double screenWidth;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 40.0, vertical: 10.0),
      height: screenHeight,
      constraints: BoxConstraints(minHeight: 560.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          ShaderMask(
            shaderCallback: (Rect bounds) {
              return LinearGradient(
                colors: [
                  scaffoldBg.withValues(alpha: 0.6),
                  scaffoldBg.withValues(alpha: 0.6),
                ],
              ).createShader(bounds);
            },
            blendMode: BlendMode.srcATop,
            child: CircleAvatar(
              radius: screenWidth / 5,
              backgroundImage: AssetImage(
                'assets/new_edit.jpg',
                //width: screenWidth,
                //height: screenHeight / 2,
              ),
            ),
          ),
          SizedBox(height: 30.0),
          Text(
            'Hi,\nI\'m Oluwagbolahan Alao,\nA Flutter Developer',
            style: TextStyle(
              fontSize: 27.0,
              height: 1.5,
              fontWeight: FontWeight.bold,
              color: whitePrimary,
            ),
          ),
          SizedBox(height: 15.0),
          SizedBox(
            width: 200.0,
            height: 70.0,
            child: ElevatedButton(
              onPressed: () {
                final key = navBarKeys[3];
                Scrollable.ensureVisible(
                  key.currentContext!,
                  duration: Duration(milliseconds: 500),
                  curve: Curves.easeInOut,
                );
              },
              style: ButtonStyle(
                backgroundColor: WidgetStateProperty.all(yellowPrimary),
              ),
              child: Text(
                'Connect',
                style: TextStyle(
                  fontSize: 20.0,
                  color: whitePrimary,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
