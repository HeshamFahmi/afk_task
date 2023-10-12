// ignore_for_file: public_member_api_docs, sort_constructors_first
// ignore_for_file: file_names, must_be_immutable

import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../utils/colors/appColors.dart';
import '../../../utils/strings/appStrings.dart';

class CustomInnerTextField extends StatefulWidget {
  final TextEditingController textEditingController;
  final TextInputType keyboardType;
  final String hint;

  bool isPassword;
  int? maxlines;
  int? minlines;
  CustomInnerTextField({
    Key? key,
    required this.textEditingController,
    required this.keyboardType,
    required this.hint,
    required this.isPassword,
    this.maxlines,
    this.minlines,
  }) : super(key: key);

  @override
  State<CustomInnerTextField> createState() => _CustomInnerTextFieldState();
}

class _CustomInnerTextFieldState extends State<CustomInnerTextField> {
  @override
  Widget build(BuildContext context) {
    return TextField(
      onTapOutside: (event) {
        FocusManager.instance.primaryFocus?.unfocus();
      },
      controller: widget.textEditingController,
      keyboardType: widget.keyboardType,
      obscureText: widget.isPassword ? true : false,
      maxLines: widget.maxlines ?? 1,
      minLines: widget.minlines ?? 1,
      decoration: InputDecoration(
          suffixIcon: widget.isPassword
              ? IconButton(
                  onPressed: () {
                    setState(() {
                      widget.isPassword = !widget.isPassword;
                    });
                  },
                  icon: Icon(widget.isPassword
                      ? Icons.visibility_outlined
                      : Icons.visibility_off_outlined))
              : const SizedBox(),
          hintText: widget.hint,
          hintStyle: TextStyle(
            fontSize: 14.sp,
            fontFamily: AppStrings.appFontFamily,
            fontWeight: FontWeight.bold,
            color: const Color(0xff8391A1),
          ),
          contentPadding:
              EdgeInsets.symmetric(horizontal: 15.w, vertical: 15.h),
          fillColor: AppColors.whiteColor,
          filled: true,
          enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10.0),
              borderSide: BorderSide(color: Colors.grey[200]!))),
    ).animate().flip(duration: 600.ms);
  }
}
