import 'package:flutter/material.dart';

class MyButton extends StatelessWidget{

  final double buttonWith;
  final double buttonHeight;
  final String text;
  final VoidCallback? buttonPressed;
  final double borderCircular;

  @override
  const MyButton({
    super.key,
    required this.buttonWith,
    required this.buttonHeight,
    required this.text,
    required this.buttonPressed,
    this.borderCircular = 10.0
  });

  @override
  Widget build(BuildContext context){
    return SizedBox(
      width: buttonWith,
      height: buttonHeight,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.blue,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(borderCircular),
          ),
        ),
        onPressed: buttonPressed,
        child: Text(
          text,
          style: const TextStyle(color: Colors.white),
        ),
      ),
    );
  }
}