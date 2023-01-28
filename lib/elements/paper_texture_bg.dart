import 'package:flutter/material.dart';

Widget PaperTextureBg(BuildContext context, {required Widget child}) {
  return Container(
    width: MediaQuery.of(context).size.width,
    height: MediaQuery.of(context).size.height,
    decoration: const BoxDecoration(
      image: DecorationImage(
        image: AssetImage("assets/white-paper-texture.png"),
        fit: BoxFit.fill,
      ),
    ),
    child: child,
  );
}
