import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

import 'package:task1/screens/my_account_screen.dart';
import 'package:task1/screens/patient_account_screen.dart';
import 'package:task1/components/appoints.dart';
import 'package:task1/models/patient.dart';

class AppointmentsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          children: [
            Icon(
              MdiIcons.stethoscope,
              size: 35.0,
              color: Colors.white,
            ),
            SizedBox(width: 8),
            Text(
              'Appointments',
              style: TextStyle(color: Colors.white),
            ),
          ],
        ),
        actions: [
          Builder(
            builder: (context) => IconButton(
              icon: Icon(
                Icons.menu,
                color: Colors.white,
                size: 35.0,
              ),
              onPressed: () {
                Scaffold.of(context).openDrawer();
              },
            ),
          )
        ],
        backgroundColor: Color(0xFF16A6D2),
        elevation: 10,
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader(
              decoration: BoxDecoration(
                color: Color(0xFF16A6D2),
              ),
              child: Text(
                'Menu',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                ),
              ),
            ),
            ListTile(
              leading:Icon(Icons.arrow_back),
              title: Text('My Account Screen'),titleTextStyle: TextStyle(fontSize:20,color: Colors.black87),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) =>MyAccountScreen()),
                );
              },
            ),
            ListTile(
              leading:Icon(Icons.arrow_back),
              title: Text('Patient Account'),titleTextStyle:  TextStyle(fontSize:20,color: Colors.black87),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) =>PatientAccountScreen()),
                );
              },
            ),
          ],
        ),
      ),
      body:Column(
        children: [
          SizedBox(height: 30,),
          Text(
            'Wednesday,22 May 2019',
          style: TextStyle(fontSize: 30,
          color: Colors.black54,
          fontWeight: FontWeight.bold,
          ),
          ),
          SizedBox(height: 70,),
          Expanded(
            child: ListView.builder(
              itemCount: theAppoints.length,
              itemBuilder:(context,index) {
                return Appoints(patient:theAppoints[index]);
              }


            ),
          )

        ],
      )
    );
  }
}
