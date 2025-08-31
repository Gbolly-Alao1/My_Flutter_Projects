import 'package:flutter/material.dart';
import 'input_page.dart';

void main() {
  runApp(BMICalculator());
}

class BMICalculator extends StatelessWidget {
  const BMICalculator({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        appBarTheme: AppBarTheme(
          titleTextStyle: TextStyle(fontSize: 20.0, color: Colors.white),
          color: Color(0xFF15262B),
          iconTheme: IconThemeData(color: Colors.white),
        ),
        platform: TargetPlatform.iOS,
        scaffoldBackgroundColor: Color(0xFF15262B),
        textTheme: TextTheme(bodyMedium: TextStyle(color: Colors.white)),
      ),
      home: InputPage(),
    );
  }
}
