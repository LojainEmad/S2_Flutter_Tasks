import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:task1/components/appoints.dart';
import 'package:task1/components/button_data.dart';
import 'package:task1/models/button.dart'; 

class PatientAccountScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          children: [
            Icon(
              MdiIcons.stethoscope,
              size: 35,
              color: Colors.white,
            ),
            SizedBox(width: 8),
            Text(
              'Patient Account',
              style: TextStyle(color: Colors.white),
            ),
          ],
        ),
        backgroundColor: Color(0xFF16A6D2),
        actions: [
          IconButton(
            icon: Icon(Icons.menu),
            onPressed: () {
              // Menu action
            },
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(25.0),
        child: Column(
          children: [
            Row(
              children: [
                Container(
                  width: 100,
                  height: 100,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(
                      color: Colors.black26,
                      width: 2,
                    ),
                  ),
                  child: CircleAvatar(
                    backgroundColor: Colors.white,
                    child: Icon(Icons.person, size: 90, color: Colors.black54),
                  ),
                ),
                SizedBox(width: 35),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Dumitru Simona',
                      style: TextStyle(
                        fontSize: 27,
                        fontWeight: FontWeight.bold,
                        color: Colors.black87,
                      ),
                    ),
                    SizedBox(height: 8),
                    ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Color(0xFF16A6D2),
                        padding: EdgeInsets.symmetric(horizontal: 25, vertical: 8),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(3),
                        ),
                      ),
                      child: Text(
                        'MEDICAL HISTORY',
                        style: TextStyle(fontSize: 17, color: Colors.white),
                      ),
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(height: 20),
            // Info Rows
            Row(
              children: [
                Icon(Icons.access_time, color: Colors.black54, size: 28),
                SizedBox(width: 10),
                Expanded(
                  child: Text(
                    '08:00 - 09:30',
                    style: TextStyle(fontSize: 16, color: Colors.black54),
                  ),
                ),
              ],
            ),
            SizedBox(height: 10),
            Row(
              children: [
                Icon(Icons.phone_android, color: Colors.black54, size: 28),
                SizedBox(width: 10),
                Expanded(
                  child: Text(
                    '0753467727',
                    style: TextStyle(fontSize: 16, color: Color(0xFF16A6D2)),
                  ),
                ),
              ],
            ),
            SizedBox(height: 10),
            Row(
              children: [
                Icon(Icons.location_on, color: Colors.black54, size: 28),
                SizedBox(width: 10),
                Expanded(
                  child: Text(
                    '48 Traian Street, Building 51, Apartment 02, Brasov',
                    style: TextStyle(fontSize: 16, color: Colors.black54),
                  ),
                ),
              ],
            ),
            SizedBox(height: 10),
            Row(
              children: [
                Icon(Icons.description, color: Colors.black54, size: 28),
                SizedBox(width: 10),
                Expanded(
                  child: Text(
                    'Medical tests are performed to verify the state of health...',
                    style: TextStyle(fontSize: 16, color: Color(0xFF16A6D2)),
                  ),
                ),
              ],
            ),
            SizedBox(height: 60),
            Expanded(
              child: GridView.builder(
                itemCount:theButtons.length,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  mainAxisSpacing: 10,
                  crossAxisSpacing: 10,
                  mainAxisExtent: 70,
                ),
                itemBuilder: (context, index) {
                  return ElevatedButton(
                    onPressed:theButtons[index].onPressed,
                    style: ElevatedButton.styleFrom(
                      backgroundColor: theButtons[index].bgColor,
                      padding: EdgeInsets.symmetric(vertical: 15,horizontal: 5),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8),
                      )
                    ),
                    child: Text(
                      theButtons[index].text,
                      style: TextStyle(
                        color: theButtons[index].textColor,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
