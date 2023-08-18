import 'package:flutter/material.dart';

class buildContainerBottomNav extends StatelessWidget {
  const buildContainerBottomNav(
      {super.key, required this.iconName, this.isSelected = false});

  final IconData iconName;
  final bool isSelected;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      width: 50,
      decoration: BoxDecoration(
          color: isSelected ? Colors.pink[300] : Colors.white,
          shape: BoxShape.circle,
          boxShadow: isSelected ? [
             BoxShadow(color: Colors.grey, blurRadius: 10, spreadRadius: 1)
         ]:[]),
      child: Icon(
        iconName,
        color: isSelected ? Colors.white : Colors.black,
      ),
    );
  }
}
