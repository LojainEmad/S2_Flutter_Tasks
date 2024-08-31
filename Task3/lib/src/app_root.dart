import 'package:flutter/material.dart';
import 'package:task3/screens/clock_screen.dart';
class AppRoot extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ClockScreen(),
    );
  }
}