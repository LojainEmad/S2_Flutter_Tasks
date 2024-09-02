import 'package:flutter/material.dart';
import 'dart:math';

import 'package:task5/components/verify_art_profile.dart';

import '../components/blur_cards.dart';
import '../components/gallery_section.dart';

class ProfileScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          Positioned(
            top: 60,
            left: -120,
            child: Transform.rotate(
              angle: pi / 4,
              child: Container(
                width: 190,
                height: 190,
                decoration: BoxDecoration(
                  color:Color(0xFFE6E8FC),
                  shape: BoxShape.rectangle,
                  borderRadius: BorderRadius.circular(50),
                ),
              ),
            ),
          ),
          Positioned(
            top: -100,
            right: -140,
            child: Transform.rotate(
              angle: pi / 7,
              child: Container(
                width: 250,
                height: 250,
                decoration: BoxDecoration(
                  color:Color(0xFFE5DEFD),
                  shape: BoxShape.rectangle,
                  borderRadius: BorderRadius.circular(50),
                ),
              ),
            ),
          ),
          // Main Content
          SafeArea(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Icon(Icons.settings, color: Colors.black),
                    ],
                  ),
                  SizedBox(height: 20),
                  CircleAvatar(
                    radius: 60,
                    backgroundImage: AssetImage('assets/images/67c1dd50342176b00039019ecc265bf7.jpg'),
                  ),
                  SizedBox(height: 10),
                  Text(
                    'Mary Smith',
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'PlayfairDisplay',
                      color: Colors.black,
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.message_outlined, color:Color(0xFF785BEF),size:20,),
                      SizedBox(width: 10,),
                      Text(
                        'SMS: 415-555-1212',
                        style: TextStyle(
                          fontSize: 14,
                          color: Colors.grey[600],
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      BlurCards(value: '2', label:'Unclaimed',color: Color(0xFF785BEF), ),
                      SizedBox(width: 10),
                      BlurCards(value:'\$2,880', label:'Monthly Earn', color: Color(0xFF0B1253)),
                    ],
                  ),
                  SizedBox(height: 20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('Action Required',
                      style: TextStyle(color: Colors.black38,fontSize:17,fontWeight: FontWeight.bold)
                      ),
                      Stack(
                        children: [
                          Container(
                            width: 30,
                            height: 30,
                            decoration: BoxDecoration(
                              color: Color(0xFF0B1253),
                              shape: BoxShape.circle,
                            ),
                            child: Center(
                              child: Text(
                                '18',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 13,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),

                    ],
                  ),
                  VerifyArtProfile(),
                  SizedBox(height: 20),
                  GallerySection(),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
