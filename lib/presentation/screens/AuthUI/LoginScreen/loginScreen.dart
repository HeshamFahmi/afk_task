// ignore_for_file: file_names, use_build_context_synchronously
import 'package:afk_task/data/cloud/auth/auth.dart';
import 'package:afk_task/presentation/screens/invoices/invoices.dart';
import 'package:afk_task/presentation/sharedWidgets/attention/customToast.dart';
import 'package:afk_task/presentation/sharedWidgets/navigating/myNavigator.dart';
import 'package:afk_task/presentation/sharedWidgets/spaces/customSizedBox.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../utils/colors/appColors.dart';
import '../../../../utils/strings/images.dart';
import '../../../sharedWidgets/spaces/widthandheight.dart';
import '../../../sharedWidgets/widgets/AppImageWidgets.dart';
import '../../../sharedWidgets/widgets/AppTexts.dart';
import '../../../sharedWidgets/widgets/customButton.dart';
import '../../../sharedWidgets/widgets/customTextField.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  TextEditingController usernameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  bool loading = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.whiteColor,
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 15.w),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            customSizedBox(0.0, getheight(context) * 0.05),
            Center(
              child: AppImages().assetImage(AppImagesPath.logo),
            )
                .animate()
                .slide(duration: 600.ms)
                .shimmer(delay: 600.ms, duration: 800.ms),
            customSizedBox(0.0, 20.h),
            CustomTextField(
                textEditingController: usernameController,
                keyboardType: TextInputType.name,
                hint: "Enter Your Name",
                isPassword: false),
            customSizedBox(0.0, 10.h),
            CustomTextField(
                textEditingController: passwordController,
                keyboardType: TextInputType.name,
                hint: "Enter Your Password",
                isPassword: true),
            customSizedBox(0.0, 20.h),
            SizedBox(
              height: 50.h,
              child: loading
                  ? const SpinKitRotatingCircle(
                      color: AppColors.primaryAppColor,
                      size: 50.0,
                    )
                  : CustomButton(
                      onpress: () async {
                        setState(() {
                          loading = true;
                        });
                        if (usernameController.text.isEmpty) {
                          showFailedToast("username can't be empty");
                          setState(() {
                            loading = false;
                          });
                          return;
                        }
                        if (passwordController.text.isEmpty) {
                          showFailedToast("password can't be empty");
                          setState(() {
                            loading = false;
                          });
                          return;
                        }
                        bool responseValue = await Auth().login(
                            usernameController.text.toString(),
                            passwordController.text.toString());
                        setState(() {
                          loading = false;
                        });

                        if (responseValue) {
                          MyNavigetor()
                              .pushReplacement(const Invoices(), context);
                        }
                      },
                      widht: double.infinity,
                      color: AppColors.primaryAppColor,
                      title: "Login",
                      height: 50.h),
            )
                .animate()
                .slide(duration: 600.ms)
                .shimmer(delay: 600.ms, duration: 600.ms),
            customSizedBox(0.0, 10.h),
            InkWell(
              child: Align(
                alignment: Alignment.centerRight,
                child: AppTexts().customAppText(
                    title: "Forget Password?",
                    size: 14.sp,
                    color: Colors.grey[500]),
              ),
            )
          ],
        ),
      ),
    );
  }
}
