import 'package:flutter/material.dart';
import 'package:task1/screens/appointments_screen.dart';

class AppRoot extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home:AppointmentsScreen(),
    );
  }
}