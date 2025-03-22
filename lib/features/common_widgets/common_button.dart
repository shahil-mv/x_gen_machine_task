import 'package:flutter/material.dart';

class CommonButton extends StatelessWidget {
  final void Function() onPress;
  final String buttonName;
  const CommonButton({super.key, required this.onPress, required this.buttonName});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPress,
      style: ElevatedButton.styleFrom(
        foregroundColor: Colors.white,
        backgroundColor: Colors.deepPurple, // Text color
        padding: EdgeInsets.symmetric(horizontal: 32.0, vertical: 16.0),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15.0),
        ),
        elevation: 5.0,
      ),
      child: Text(buttonName),
    );
  }
}
