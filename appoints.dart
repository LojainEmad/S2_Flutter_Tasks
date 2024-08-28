import 'package:flutter/material.dart';
import 'package:task1/models/patient.dart';

class Appoints extends StatelessWidget {
  final Patient patient;

  Appoints({required this.patient});

  @override
  Widget build(BuildContext context) {
    // Determine if the current patient should have a special icon
    bool isCorrectIcon = patient.name == 'Dumitru Simona';
    bool isWrongIcon = patient.name == 'Alexandru Sandu';

    return Padding(
      padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
      child: Container(
        width: 300,
        height: 64,
        padding: EdgeInsets.fromLTRB(11, 0, 11, 0),
        decoration: BoxDecoration(
          color: Color(0xFFF9F9F9),
          border: Border(
            bottom: BorderSide(
              color: Colors.black54,
              width: 2.0,
            ),
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  patient.name,
                  style: TextStyle(
                    color: Colors.black38,
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Row(
                  children: [
                    Icon(
                      Icons.alarm,
                      color: Colors.black38,
                    ),
                    SizedBox(width: 5),
                    Text(
                      patient.time,
                      style: TextStyle(
                        color: Colors.black38,
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ],
            ),
            if (isCorrectIcon)
              Icon(
                Icons.check,
                color: Colors.blue, // Adjust the color to your preference
                size: 40,
              )
            else if (isWrongIcon)
              Icon(
                Icons.cancel_outlined,
                color: Colors.red, // Adjust the color to your preference
                size: 40,
              ),
          ],
        ),
      ),
    );
  }
}
