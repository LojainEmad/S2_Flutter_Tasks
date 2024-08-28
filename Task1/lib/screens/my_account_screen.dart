import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class MyAccountScreen extends StatelessWidget {
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
            SizedBox(width: 8
            ),
            Text(
              'My Account',
              style: TextStyle(color: Colors.white
              ),
            ),
          ],
        ),
        backgroundColor: Color(0xFF16A6D2),
      ),
      body: Column(
        // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Column(
            children: [
              SizedBox(height: 30),
              Container(
                width: 120, // Width of the Container
                height: 120, // Height of the Container
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  border: Border.all(
                    color: Colors.black12, // Border color
                    width: 2, // Border width
                  ),
                ),
                child: CircleAvatar(
                  radius: 60,
                  backgroundImage: AssetImage('assets/female-doctor-using-her-digital-tablet-free-vector.jpg'),
                ),
              ),
              SizedBox(height: 10),
              Text(
                'Maria Ioana Leonte',
                style: TextStyle(color: Colors.black54, fontWeight: FontWeight.bold, fontSize: 35),
              ),
              Text(
                'HCP Name',
                style: TextStyle(color: Colors.black38, fontWeight: FontWeight.bold, fontSize: 25),
              ),
              SizedBox(height: 70),
              Row(
                children: [
                  SizedBox(width: 19),
                  Icon(Icons.phone_android, color: Colors.black38, size: 35),
                  SizedBox(width: 15),
                  Text(
                    '07434697256',
                    style: TextStyle(fontSize: 20, color: Colors.black38, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              SizedBox(height: 10),
              Row(
                children: [
                  SizedBox(width: 19),
                  Icon(MdiIcons.at, color: Colors.black38, size: 38),
                  SizedBox(width: 15),
                  Text(
                    'maria.loana@gmail.com',
                    style: TextStyle(fontSize: 20, color: Colors.black38, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              SizedBox(height: 10),
              Row(
                children: [
                  SizedBox(width: 19),
                  Icon(Icons.shopping_bag_rounded, color: Colors.black38, size: 38),
                  SizedBox(width: 15),
                  Text(
                    '49 Nerva Traian Street, Bucharest',
                    style: TextStyle(fontSize: 19, color: Colors.black38, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ],
          ),
          SizedBox(height: 45),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: Text('Back', style: TextStyle(fontSize: 23)),
              style: ElevatedButton.styleFrom(
                backgroundColor: Color(0xFF16A6D2),
                foregroundColor: Colors.white,
                minimumSize: Size(180, 70),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
