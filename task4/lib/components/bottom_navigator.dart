import 'package:flutter/material.dart';

class BottomNavigator extends StatelessWidget {
  final int currentIndex;
  final Function(int) onTap;

  BottomNavigator({required this.currentIndex, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      currentIndex: currentIndex,
      onTap: onTap,
      items: [
        BottomNavigationBarItem(
          icon: _buildIcon(Icons.home_outlined, 0, currentIndex),
          label: '',
        ),
        BottomNavigationBarItem(
          icon: _buildIcon(Icons.assignment, 1, currentIndex),
          label: '',
        ),
        BottomNavigationBarItem(
          icon: _buildIcon(Icons.messenger_outline, 2, currentIndex),
          label: '',
        ),
        BottomNavigationBarItem(
          icon: _buildIcon(Icons.search, 3, currentIndex),
          label: '',
        ),
        BottomNavigationBarItem(
          icon: _buildIcon(Icons.person, 4, currentIndex),
          label: '',
        ),
      ],
    );
  }

  Widget _buildIcon(IconData iconData, int index, int currentIndex) {
    return Icon(
      iconData,
      color: currentIndex == index ? Color(0xFF625EE9) : Colors.grey,
    );
  }
}
