import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:the_task_6/models/details_data.dart';


class Details extends StatelessWidget{
  final DetailsData data;
  Details ({ required this.data});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text(
          data.count,
          style: TextStyle(
            color: Colors.white,
            fontSize:12,
            fontWeight: FontWeight.bold,
          ),
        ),
        Text(
          data.label,
          style: TextStyle(
            color: Colors.white70,
            fontSize: 12,
          ),
        ),
      ],
    );
  }
}