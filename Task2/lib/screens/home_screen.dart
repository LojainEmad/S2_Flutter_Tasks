import 'package:flutter/material.dart';
import 'package:task2/models/options.dart';
import 'package:task2/components/buttons_data.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF212121),
      appBar: AppBar(
        toolbarHeight: 37,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Icon(
              Icons.arrow_back,
              color: Colors.white,
              size: 26,
            ),
            Icon(
              Icons.wb_sunny_outlined,
              color: Colors.white,
              size: 26,
            )
          ],
        ),
        backgroundColor: Color(0xFF212121),
      ),
      body: Column(
        children: [
          Center(
            child: Column(
              children: [
                Stack(
                  alignment: Alignment.bottomRight,
                  children: [
                    CircleAvatar(
                      radius: 50,
                      backgroundImage: AssetImage('assets/20188206_4200_3_03.jpg'),

                    ),
                    Positioned(
                      bottom: 0,
                      right: 0,
                      child: Stack(
                        alignment: Alignment.center,
                        children: [
                          Container(
                            width: 25,
                            height: 25,
                            decoration: BoxDecoration(
                              color: Color(0xFFFCC004),
                              shape: BoxShape.circle,
                              border: Border.all(
                                color: Colors.black,
                                width: 2,
                              ),
                            ),
                          ),
                          Icon(
                            Icons.edit,
                            color: Colors.black,
                            size: 20,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 8),
                Text(
                  'Nicolas Adams',
                  style: TextStyle(
                    fontSize: 22,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  'nicolasadams@gmail.com',
                  style: TextStyle(fontSize: 16, color: Colors.grey),
                ),
                SizedBox(height: 10),
                ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Color(0xFFFCC004),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                    minimumSize: Size(190, 40),
                  ),
                  child: Text(
                    'Upgrade to PRO',
                    style: TextStyle(color: Colors.black),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 20),
          // Options List
          Expanded(
            child: ListView.builder(
              itemCount: buttonOption.length,
              itemBuilder: (context, index) {
                return ButtonsData(
                  option: buttonOption[index],
                  showTrailingIcon: index != buttonOption.length - 1,
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
