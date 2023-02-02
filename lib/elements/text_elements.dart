import 'package:flutter/material.dart';

TextStyle customizeTextStyle(fontWeight, fontSize, fontColor) => TextStyle(
    fontWeight: fontWeight,
    wordSpacing: 3,
    color: fontColor,
    fontSize: fontSize);

Widget customTextBold(String text, Color color, double size, {fontWeight}) {
  return Text(text,
      style: TextStyle(
          fontSize: size,
          color: color,
          fontWeight: fontWeight,
          fontFamily: 'Montserrat-Bold'));
}

Widget customTextExtraBold(String text, Color color, double size,
    {fontWeight}) {
  return Text(text,
      style: TextStyle(
          fontSize: size,
          color: color,
          fontWeight: fontWeight,
          fontFamily: 'Montserrat-ExtraBold'));
}

Widget customTextMedium(String text, Color color, double size, {fontWeight}) {
  return Text(
    text,
    style: TextStyle(
      fontSize: size,
      color: color,
      fontWeight: fontWeight,
      // overflow: TextOverflow.ellipsis,
      fontFamily: 'Montserrat-Medium',
    ),
  );
}

Widget customInkWellText(
    Function() onTap, String text, Color color, double size,
    {fontWeight}) {
  return InkWell(
    onTap: onTap,
    child: Text(text,
        style: TextStyle(fontSize: size, color: color, fontWeight: fontWeight)),
  );
}

Widget customRichText(String text1, String text2, Color color1, Color color2) {
  return RichText(
    text: TextSpan(
      children: <TextSpan>[
        TextSpan(text: text1, style: TextStyle(color: color1, fontSize: 30)),
        TextSpan(text: text2, style: TextStyle(color: color2, fontSize: 30)),
      ],
    ),
    textScaleFactor: 0.5,
  );
}

Widget customUnderlineText(String text, Color color, double size,
    {fontWeight}) {
  return Text(text,
      style: TextStyle(
        decoration: TextDecoration.underline,
        fontSize: size,
        color: color,
        fontWeight: fontWeight,
      ));
}
