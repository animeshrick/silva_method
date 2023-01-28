import 'package:flutter/material.dart';

class AppColor{
  static final AppColor _instance = AppColor._internal();

  factory AppColor() => _instance;

  AppColor._internal();

  Color appBaseColor1 = Color(0xfff640e4);
  Color appBaseColor2 =  Color(0xffa051f4);
  Color appBtnColor1 =  Color(0xffe12178);
  Color appBtnColor2 = Color(0xffbd2d92);
}

