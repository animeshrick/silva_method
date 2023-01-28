import 'package:flutter/material.dart';

Widget GradiantText({required String text}){
  return ShaderMask(
    shaderCallback: (Rect bounds) {
      return LinearGradient(
        colors: [Colors.red, Colors.yellow],
        tileMode: TileMode.mirror,
      ).createShader(bounds);
    },
    child: Text(
      text,
      style: TextStyle(
        fontSize: 24,
        color: Colors.white,
      ),
    ),
  );
}