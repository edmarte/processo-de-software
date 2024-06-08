import 'package:flutter/material.dart';

Widget myTextButton(double width, double height, String img, String text,
    Function fnc, BuildContext c) {
  return TextButton(
        onPressed: () {
          fnc(c);
        },
        child: Column(
          children: <Widget>[
            Image.asset(img, width: width, height: height,),
            Text(
              text,
              style: const TextStyle(fontSize: 12),
            ),
          ],
        ),
      );
}
