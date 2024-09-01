import 'package:flutter/material.dart';
import 'package:task4/screens/home_screen.dart';

class AppRoot extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home:HomeScreen(),
    );
  }
}