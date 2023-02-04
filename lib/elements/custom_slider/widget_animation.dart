import 'package:flutter/material.dart';

imageAnimation(PageController animation,String images, active) {
  return AnimatedBuilder(
    animation: animation,
    builder: (context, widget) {
      double margin = active ? 0 : 20;
      return AnimatedContainer(
        duration: const Duration(milliseconds: 500),
        curve: Curves.easeInOutCubic,
        margin: EdgeInsets.all(margin),
        width: double.infinity,
        height: 250,
        // decoration: BoxDecoration(
        //   color: Colors.red,
        //   image: DecorationImage(
        //     fit: BoxFit.fill,
        //     image: NetworkImage(
        //       images.toString(),
        //     ),
        //   ),
        // ),
        child: widget,);
    },
  );
}