import 'package:flutter/material.dart';

class TextButtons extends StatelessWidget {
  const TextButtons(
      {super.key,
      required this.buttonText,
      required this.buttonColor,
      required this.buttonTextColor,
      required this.buttonAction});

  final void Function() buttonAction;
  final String buttonText;
  final Color buttonColor;
  final Color buttonTextColor;

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: buttonAction,
      child: Text(
        buttonText,
        style: TextStyle(fontSize: 18),
      ),
      style: TextButton.styleFrom(
        backgroundColor: buttonColor,
        primary: buttonTextColor,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
      ),
    );
  }
}
