import 'package:flutter/material.dart';

class ReusedCont extends StatelessWidget {
  // const ReusedCont({super.key});
  const ReusedCont({
    super.key,
    required this.colour,
    this.cardChild,
    this.onPress,
  });
  final Color colour;
  final Widget? cardChild;
  final VoidCallback? onPress;
  //VoidCallback is just shorthand for void Function()
  //'VoidCallback' was used instead of 'Function' because onTap requires a 'GestureTapCallback'
  //which is a void Function() which is more specific than 'Function' which is generic

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress,
      child: Container(
        margin: EdgeInsets.all(15.0),
        decoration: BoxDecoration(
          color: colour,
          borderRadius: BorderRadius.circular(10.0),
        ),
        child: cardChild,
      ),
    );
  }
}
