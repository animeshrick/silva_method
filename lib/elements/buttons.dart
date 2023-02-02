import 'package:flutter/material.dart';
import 'package:silva/elements/app_color.dart';
import 'package:silva/elements/text_elements.dart';

class CustomButtons {
  Widget gradiantButtons({
    required void Function()? onPressed,
    required String text,
  }) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
          padding: const EdgeInsets.all(0.0),
          elevation: 5,
          backgroundColor: Colors.transparent),
      onPressed: onPressed,
      child: Container(
        width: double.infinity,
        height: 50,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          gradient: LinearGradient(colors: [
            AppColor().appBtnColor1,
            AppColor().appBtnColor2,
          ]),
        ),
        child: Container(
          padding: const EdgeInsets.all(10),
          constraints: const BoxConstraints(minWidth: 88.0),
          child: Center(child: customTextBold(text, Colors.white, 16)),
        ),
      ),
    );
  }

  Widget buyButton({
    required void Function()? onPressed,
    required String text,
  }) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
          padding: const EdgeInsets.all(0.0),
          elevation: 5,
          backgroundColor: Colors.transparent),
      onPressed: onPressed,
      child: Container(
        width: double.infinity,
        height: 50,
        decoration: BoxDecoration(
          color: AppColor().buyButtonColor,
          borderRadius:const BorderRadius.only(topLeft: Radius.circular(10),topRight:  Radius.circular(10)),
        ),
        child: Container(
          padding: const EdgeInsets.all(10),
          constraints: const BoxConstraints(minWidth: 88.0),
          child: Center(
            child: customTextExtraBold(
              text,
              Colors.white,
              16,
            ),
          ),
        ),
      ),
    );
  }
}
