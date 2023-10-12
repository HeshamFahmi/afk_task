// ignore_for_file: file_names

import 'dart:async';

import 'package:afk_task/utils/colors/appColors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';

import '../../../utils/strings/images.dart';
import '../../sharedWidgets/navigating/myNavigator.dart';
import '../../sharedWidgets/widgets/AppImageWidgets.dart';
import '../AuthUI/LoginScreen/loginScreen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen>
    with SingleTickerProviderStateMixin {
  @override
  void initState() {
    Timer(const Duration(seconds: 5), () {
      MyNavigetor().pushReplacement(const LoginScreen(), context);
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.whiteColor,
      body: Stack(
        alignment: Alignment.center,
        fit: StackFit.loose,
        children: <Widget>[
          Align(
            alignment: Alignment.center,
            child: AppImages().assetImage(AppImagesPath.logo),
          ).animate().fadeIn(duration: 500.ms).scale(delay: 500.ms),
        ],
      ),
    );
  }
}
