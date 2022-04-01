import 'package:flutter/material.dart';
class ReusableCard extends StatelessWidget {
  final Color colour;
  final Widget? cardChild;
  final VoidCallback? onPress ;
      const ReusableCard( {Key? key,  required this.colour,   this.cardChild,    this.onPress}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress,
      child: Container(
        child: cardChild,
        margin: const EdgeInsets.all(15.0),
        decoration: BoxDecoration(
          color: colour,
          borderRadius: BorderRadius.circular(10.0),
        ),
      ),
    );
  }
}