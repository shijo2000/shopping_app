import 'package:flutter/material.dart';

class LineBar extends StatelessWidget {
  const LineBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: Colors.grey[300],
          borderRadius: BorderRadius.only(topLeft: Radius.circular(10),bottomLeft: Radius.circular(10))),
      margin: EdgeInsets.only(left: 40),
      height: 5,
      width: MediaQuery.of(context).size.width,
      alignment: Alignment.centerLeft,
      child: Container(decoration: BoxDecoration(
          color: Colors.black,
          borderRadius: BorderRadius.only(topLeft: Radius.circular(10),bottomLeft: Radius.circular(10))),
        height: 5,
        width: 100,
      ),
    );
  }
}
