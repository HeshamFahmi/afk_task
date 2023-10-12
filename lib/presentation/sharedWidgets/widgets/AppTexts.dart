// ignore_for_file: file_names

import 'package:flutter/widgets.dart';
import 'package:flutter_animate/flutter_animate.dart';

import '../../../utils/colors/appColors.dart';
import '../../../utils/strings/appStrings.dart';

class AppTexts {
  customAppText(
      {required String title,
      double? size,
      Color? color,
      TextAlign? textAlign,
      TextOverflow? textOverflow}) {
    return Text(
      title,
      textAlign: textAlign ?? TextAlign.start,
      style: TextStyle(
          color: color ?? AppColors.primaryAppColor,
          fontSize: size ?? 12,
          overflow: textOverflow ?? TextOverflow.visible,
          fontWeight: FontWeight.bold,
          fontFamily: AppStrings.appFontFamily),
    ).animate().slideX(duration: 600.ms);
  }

  customAppNormalText(
      {required String title,
      double? size,
      Color? color,
      TextOverflow? textOverflow}) {
    return Text(
      title,
      style: TextStyle(
          color: color ?? AppColors.primaryAppColor,
          fontSize: size ?? 12,
          overflow: textOverflow ?? TextOverflow.visible,
          //fontWeight: FontWeight.bold,
          fontFamily: AppStrings.appFontFamily),
    ).animate().slideX(duration: 600.ms);
  }
}
