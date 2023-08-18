import 'package:flutter/material.dart';

class BuildCoulmnAtTop extends StatelessWidget {
  const BuildCoulmnAtTop({super.key, required this.buttonText,  this.isSelected = false});

  final String buttonText;
  final bool isSelected ;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: 20,),
        Text(
          buttonText,
          style: TextStyle(color: isSelected ? Colors.black : Colors.grey,fontSize: 18),
        ),
        SizedBox(
          height: 5,
        ),
        if (isSelected)
        Container(
          height: 5,
          width: 5,
          decoration:
              BoxDecoration(color: Colors.black, shape: BoxShape.circle),
        ),
      ],
    );
  }
}
