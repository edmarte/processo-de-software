import 'package:flutter/material.dart';

class MyIconButton extends StatelessWidget{

  final double buttonWidth;
  final double buttonHeight;
  final VoidCallback? buttonPressed;
  final String img;

  const MyIconButton({
    super.key,
    required this.buttonWidth,
    required this.buttonHeight,
    required this.buttonPressed,
    required this.img,
  });

  @override
  Widget build(BuildContext context){
    return SizedBox(
      width: buttonWidth,
      height: buttonHeight,
      child: IconButton(
        icon: Image.asset(img),
        onPressed: buttonPressed,
        style: IconButton.styleFrom(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10.0),
          ),
          backgroundColor: Colors.blue[50],
        ),
      ),
    );
  }
}