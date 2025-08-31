import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.blueGrey[600],
        appBar: AppBar(
          title: Text('Ask Me Anything'),
          backgroundColor: Colors.indigo,
        ),
        body: BallPage(),
      ),
    ),
  );
}

class BallPage extends StatefulWidget {
  const BallPage({super.key});

  @override
  State<BallPage> createState() => _BallPageState();
}

class _BallPageState extends State<BallPage> {
  int ballNo = 1;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(90.0),
        child: TextButton(
          onPressed: () => setState(() {
            ballNo = Random().nextInt(5) + 1;
          }),
          child: Image.asset('images/ball$ballNo.png'),
        ),
      ),
    );
  }
}
