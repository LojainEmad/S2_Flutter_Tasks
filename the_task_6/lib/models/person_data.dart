import 'package:flutter/material.dart';

class PersonData {
  final String name;
  final String title;
  final Color color;
  final int rank;
  final String imageUrl;

  PersonData(
  {
    required this.name,
    required this.title,
    required this.color,
    required this.rank,
    required this.imageUrl}
      );
}

List<PersonData> persons = [
  PersonData(
    name:'David Borg',
    title:'Flying wings',
    color:Colors.blueAccent,
    rank:1,
    imageUrl:'assets/images/91236.jpg',
  ),

  PersonData(
    name: 'Lucy',
    title: 'Growing up trouble',
    color: Colors.orangeAccent,
    rank: 2,
    imageUrl: 'assets/images/2632935_8789.jpg',
  ),

  PersonData(
    name: 'Jerry Cool West',
    title: "Sculptor's diary",
    color: Colors.pink,
    rank: 3,
    imageUrl: 'assets/images/4042116_86145.jpg',
  ),

  PersonData(
    name: 'Bold',
    title: 'Illustration of little girl',
    color: Colors.purple,
    rank: 4,
    imageUrl: 'assets/images/16277069_pd22-23-16-ploy.jpg',
  ),

  PersonData(
    name: 'David Borg',
    title: '',
    color: Color(0xFF6AE2C1),
    rank: 5,
    imageUrl: 'assets/images/top-view-roses-flowers.jpg',
  ),
];
