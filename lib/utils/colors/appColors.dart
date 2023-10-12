// ignore_for_file: file_names

import 'package:flutter/material.dart';

class AppColors {
  static const Color primaryAppColor = Color(0xff111B49);
  static const Color primaryLightColor = Color(0xff1E2B68);
  static const Color redColor = Color(0xffF8465C);
  static const Color whiteColor = Colors.white;
  static const Color blackColor = Colors.black;
  static const Color textGreyColor = Color(0xff8391A1);
  static const Color appGrey = Color(0xff8391A1);
  static const Color darkGrey = Color(0xff6A707C);
  static const Color lighBlueColor = Color(0xff3A56CA);
  static const Color lightGreen = Color(0xff9DFE16);
  static const Color buttonBlueColor = Color(0xff3A56CA);
  static const Color textGreenColor = Color(0xff03B43F);
  static const Color buttonGreenColor = Color(0xff04B067);

  static const LinearGradient authButtonGradient = LinearGradient(
    begin: Alignment.centerLeft,
    end: Alignment.centerRight,
    colors: [
      Color(0xffFF6A44),
      Color(0xffE65560),
    ],
  );
}
