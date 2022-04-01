
import 'package:flutter/material.dart';
import 'constants.dart';
class iconContent extends StatelessWidget {


  final IconData icon;
  final String label;
  const iconContent({Key? key, required this.icon, required this.label}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children:  <Widget>[
        Icon(
          icon,
          size: 80.0,
        ),
        const SizedBox(
          height: 15.0,
        ),
        Text(
          label,
          style:  klabelTextStyle,
        ),
      ],
    );
  }
}