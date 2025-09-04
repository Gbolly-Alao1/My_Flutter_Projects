import 'package:flutter/material.dart';
import 'package:my_flutter_portfolio/pages/home_page.dart';
import '../constants/colors.dart';

class MainDesktop extends StatelessWidget {
  const MainDesktop({
    super.key,
    required this.screenWidth,
    required this.screenHeight,
  });

  final double screenWidth;
  final double screenHeight;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 20.0),
      height: screenHeight / 1.2,
      constraints: BoxConstraints(minHeight: 350.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Hi,\nI\'m Oluwagbolahan Alao,\nA Flutter Developer',
                style: TextStyle(
                  fontSize: 30.0,
                  height: 1.5,
                  fontWeight: FontWeight.bold,
                  color: whitePrimary,
                ),
              ),
              SizedBox(height: 20.0),
              SizedBox(
                width: 275.0,
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
          CircleAvatar(
            radius: screenWidth / 7,
            backgroundImage: AssetImage(
              'assets/new_edit.jpg',
              //width: screenWidth,
              //height: screenHeight / 2,
            ),
          ),
        ],
      ),
    );
  }
}
