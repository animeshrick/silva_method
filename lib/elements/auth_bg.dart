import 'package:flutter/material.dart';

Widget AuthBg(BuildContext context, {required Widget child}) {
  return Container(
    width: MediaQuery.of(context).size.width,
    height: MediaQuery.of(context).size.height,
    decoration: const BoxDecoration(
      image: DecorationImage(
        image: AssetImage("assets/auth_bg.png"),
        fit: BoxFit.fill,
      ),
    ),
    child: child,
  );
}
