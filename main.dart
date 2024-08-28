import 'package:flutter/material.dart';
import 'package:task1/src/app_root.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart'; // Import the package

void main(){
  runApp(AppRoot());
}


// void main() {
//   runApp(
//     MaterialApp(
//       home: HomeScreen(),
//     ),
//   );
// }
//
// class HomeScreen extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Row(
//           children: [
//             Icon(
//               MdiIcons.stethoscope,
//               size: 35.0,
//               color: Colors.white,
//             ),
//             SizedBox(width: 8),
//             Text(
//               'Appointments',
//               style: TextStyle(color: Colors.white),
//             ),
//           ],
//         ),
//         actions: [
//           Builder(
//             builder: (context) => IconButton(
//               icon: Icon(
//                 Icons.menu,
//                 color: Colors.white,
//                 size: 35.0,
//               ),
//               onPressed: () {
//                 Scaffold.of(context).openDrawer(); // Correct context is used here
//               },
//             ),
//           )
//         ],
//         backgroundColor: Color(0xFF16A6D2),
//         elevation: 10,
//       ),
//       drawer: Drawer(
//         child: ListView(
//           padding: EdgeInsets.zero,
//           children: <Widget>[
//             DrawerHeader(
//               decoration: BoxDecoration(
//                 color: Color(0xFF16A6D2),
//               ),
//               child: Text(
//                 'Menu',
//                 style: TextStyle(
//                   color: Colors.white,
//                   fontSize: 24,
//                 ),
//               ),
//             ),
//             ListTile(
//               leading: Icon(Icons.screen_lock_portrait),
//               title: Text('Go to Screen 1'),
//               onTap: () {
//                 Navigator.push(
//                   context,
//                   MaterialPageRoute(builder: (context) => Screen1()),
//                 );
//               },
//             ),
//             ListTile(
//               leading: Icon(Icons.screen_lock_portrait),
//               title: Text('Go to Screen 2'),
//               onTap: () {
//                 Navigator.push(
//                   context,
//                   MaterialPageRoute(builder: (context) => Screen2()),
//                 );
//               },
//             ),
//           ],
//         ),
//       ),
//       body: Center(
//         child: Text('Home Screen'),
//       ),
//     );
//   }
// }
//
// class Screen1 extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Screen 1'),
//         backgroundColor: Color(0xFF16A6D2),
//       ),
//       body: Center(
//         child: Text('This is Screen 1'),
//       ),
//     );
//   }
// }
//
// class Screen2 extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Screen 2'),
//         backgroundColor: Color(0xFF16A6D2),
//       ),
//       body: Center(
//         child: Text('This is Screen 2'),
//       ),
//     );
//   }
// }
//#####################################3
//
// void main() {
//   runApp(
//       MaterialApp(
//         home: Scaffold(
//           appBar: AppBar(
//             title: Row(
//               children: [
//                 Icon(MdiIcons.stethoscope,
//                   size: 35.0,
//                   color: Colors.white,
//                 ),
//                 SizedBox(width:8),
//                 Text('Appointments',
//                   style: TextStyle(color: Colors.white),),
//               ],
//             ),
//             actions: [
//               IconButton(
//                 icon:Icon(Icons.menu,
//                   color: Colors.white,
//                   size:35.0,),
//                 onPressed: (){
//                   Scaffold.of(context).openDrawer();
//                 },
//               )
//             ],
//             backgroundColor: Color(0xFF16A6D2),
//             elevation:10,
//           ),
//           body: Container(),
//         ),
//       )
//   );
// }