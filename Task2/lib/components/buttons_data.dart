import 'package:flutter/material.dart';
import 'package:task2/models/options.dart';

class ButtonsData extends StatelessWidget {
  final Options option;
  final bool showTrailingIcon;

  ButtonsData({required this.option,
    this.showTrailingIcon = true});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0),
      child: ListTile(
        leading: Icon(option.icon, color: Colors.white),
        title: Text(
          option.name,
          style: TextStyle(
              color: Colors.white, fontSize: 18, fontWeight: FontWeight.bold),
        ),
        trailing: showTrailingIcon
            ? Icon(Icons.arrow_forward_ios, color: Colors.grey)
            : null,
        tileColor: Color(0xFF383838),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(70),
        ),
      ),
    );
  }
}
