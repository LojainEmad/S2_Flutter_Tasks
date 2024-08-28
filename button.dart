import 'package:flutter/material.dart';
import 'package:task1/screens/appointments_screen.dart';

class Button{
  final String text;
  final Color bgColor;
  final Color textColor;
  final VoidCallback onPressed;

  Button({
    required this.text,
    required this.bgColor,
    required this.textColor,
    required this.onPressed,
  });
}

List<Button> theButtons=[
  Button(
    text: 'Start\nProcedures',
    bgColor: Color(0xFF16A6D2),
    textColor: Colors.white,
    onPressed: () {},
  ),
  Button(
    text: 'EDIT',
    bgColor:Color(0xFFCDCDCD),
    textColor: Colors.white,
    onPressed: () {},
  ),
  Button(
    text: 'BACK',
    bgColor: Color(0xFF16A6D2),
    textColor: Colors.white,
    onPressed: () {

    },
  ),
  Button(
    text: 'PATIENT\nMISSING',
    bgColor: Color(0xFF16A6D2),
    textColor: Colors.white,
    onPressed: () {},
  ),


];