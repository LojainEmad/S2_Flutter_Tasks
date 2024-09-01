import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:flutter/material.dart';
class Options {
  String name;
  IconData icon;

  Options({required this.name,
    required this.icon
  });
}

List<Options> option=[
  Options(
    name:'Buying',
    icon: Icons.shopping_cart,
  ),
  Options(
    name:'Selling',
    icon:Icons.home_sharp,
  ),
  Options(
    name:'Trades',
    icon:Icons.shopping_bag,
  ),
  Options(
    name:'Videos',
    icon:Icons.slow_motion_video_sharp,
  ),
  Options(
    name:'Deals',
    icon:Icons.percent_outlined,
  ),
  Options(
    name:'Case Study',
    icon:Icons.menu_book_rounded
  ),
];