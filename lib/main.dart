import 'input_page.dart';
import 'package:flutter/material.dart';

void main() => runApp(BMICalculator());

class BMICalculator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,

      theme: ThemeData.dark().copyWith(
        primaryColor:const Color(0xFF10163B) ,
        scaffoldBackgroundColor: const Color(0xFF0B102A),
        textTheme: const TextTheme(
          bodyText2: TextStyle(color: Colors.white),
        ),

      ),
      home: const InputPage(),
    );
  }
}

