import 'package:flutter/material.dart';
class Options{

  IconData icon;
  String name;

  Options({required this.icon,required this.name});
}

List<Options>buttonOption= [
  Options(icon: Icons.perm_identity_outlined, name:'privacy'),
  Options(icon: Icons.history, name: 'Purchase History'),
  Options(icon: Icons.help_outline_sharp, name: 'Help & Support'),
  Options(icon: Icons.settings, name: 'Setting'),
  Options(icon: Icons.person_add_alt_outlined, name: 'Invite a Friend'),
  Options(icon: Icons.logout_outlined, name: 'Logout'),


];