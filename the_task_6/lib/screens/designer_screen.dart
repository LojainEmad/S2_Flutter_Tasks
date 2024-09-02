import 'package:flutter/material.dart';
import '../components/build_card.dart';
import '../models/person_data.dart';

class DesignerScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(120),
        child: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          leading: Icon(Icons.arrow_back, color: Colors.white),
          actions: [
            Icon(Icons.menu, color: Colors.white),
          ],
          flexibleSpace: Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [Color(0xFFD769F2), Color(0xFFAE4FEF)],
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
              ),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                SizedBox(height: 16),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Text(
                          'Designer',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 24,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Container(
                          width: 110,
                          height: 4,
                          color: Colors.white,
                        ),
                      ],
                    ),
                    SizedBox(width: 12),
                    Text(
                      'Category',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(width: 12),
                    Text(
                      'Attention',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 10),
              ],
            ),
          ),
          centerTitle: true,
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.fromLTRB(20,10, 20, 0),
        child: Column(
          children: [
            Expanded(
              child: ListView.builder(
                itemCount: persons.length,
                itemBuilder: (context, index) {
                  return BuildCard(person: persons[index]);
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}

