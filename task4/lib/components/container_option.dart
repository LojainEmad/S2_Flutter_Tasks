import 'package:flutter/material.dart';
import 'package:task4/models/options.dart';

class ContainerOption extends StatelessWidget {
  final Options option_obj;
  final bool isSelected;
  final Function() onTap;

  ContainerOption({
    required this.option_obj,
    required this.isSelected,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: AnimatedContainer(
        duration: Duration(milliseconds: 200),
        decoration: BoxDecoration(
          color: isSelected ? Color(0xFF625EE9) : Colors.white,
          borderRadius: BorderRadius.circular(12),
          boxShadow: [
            BoxShadow(
              color: Color(0xFF625EE9).withOpacity(isSelected ? 0.4 : 0.2),
              spreadRadius: isSelected ? 6 : 2,
              blurRadius: isSelected ? 10: 5,
              offset: Offset(0, 2),
            ),
          ],
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                option_obj.icon,
                size: 30,
                color: isSelected ? Colors.white : Color(0xFF625EE9),
              ),
              SizedBox(height: 8),
              Text(
                option_obj.name,
                style: TextStyle(
                  fontSize: 16,
                  color: isSelected ? Colors.white : Colors.grey,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
