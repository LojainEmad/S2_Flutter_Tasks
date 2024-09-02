import 'package:flutter/material.dart';

import '../screens/designer_screen.dart';

class AppRoot extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: DesignerScreen(),
    );
  }
}
