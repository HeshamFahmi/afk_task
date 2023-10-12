// ignore_for_file: public_member_api_docs, sort_constructors_first
// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../utils/colors/appColors.dart';
import 'AppTexts.dart';

class CustomButton extends StatelessWidget {
  final double widht;
  final Color color;
  final String title;
  final double? height;
  final VoidCallback? onpress;
  final double? fontSize;
  const CustomButton({
    Key? key,
    required this.widht,
    required this.color,
    required this.title,
    this.height,
    this.onpress,
    this.fontSize,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onpress ?? () {},
      child: Container(
        padding: const EdgeInsets.all(5),
        width: widht,
        alignment: Alignment.center,
        //height: height ?? 35,
        decoration: BoxDecoration(
            color: color, borderRadius: BorderRadius.circular(10)),
        child: AppTexts().customAppText(
            title: title, size: fontSize ?? 12.sp, color: AppColors.whiteColor),
      ),
    )
        .animate()
        .scale(duration: 600.ms)
        .shimmer(delay: 600.ms, duration: 600.ms);
  }
}
