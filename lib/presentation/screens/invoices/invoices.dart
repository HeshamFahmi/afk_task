// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';

import 'package:afk_task/data/cloud/invoices/invoicesApi.dart';
import 'package:afk_task/data/local/sharedPref.dart';
import 'package:afk_task/data/models/invoicesModel.dart';
import 'package:afk_task/presentation/sharedWidgets/spaces/customSizedBox.dart';
import 'package:afk_task/presentation/sharedWidgets/widgets/AppTexts.dart';
import 'package:afk_task/utils/colors/appColors.dart';

class Invoices extends StatefulWidget {
  const Invoices({super.key});

  @override
  State<Invoices> createState() => _InvoicesState();
}

class _InvoicesState extends State<Invoices> {
  bool loading = true;
  InvoicesModel? invoicesModel;
  @override
  void initState() {
    getAllInvoices();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: AppTexts().customAppText(
            title: "Invoices", size: 15.sp, color: AppColors.whiteColor),
        centerTitle: true,
        backgroundColor: AppColors.primaryAppColor,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 15.w),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              customSizedBox(0.0, 20.h),
              Row(
                children: [
                  AppTexts().customAppNormalText(
                      title: "Hi ", size: 13.sp, color: AppColors.blackColor),
                  AppTexts().customAppText(
                      title: CacheHelper.getData(key: "userName"),
                      size: 15.sp,
                      color: AppColors.primaryAppColor),
                  AppTexts().customAppNormalText(
                      title: " this are all your invoices",
                      size: 13.sp,
                      color: AppColors.blackColor)
                ],
              ),
              customSizedBox(0.0, 10.h),
              loading
                  ? const SpinKitRotatingCircle(
                      color: AppColors.primaryAppColor,
                      size: 50.0,
                    )
                  : AnimationLimiter(
                      child: ListView.builder(
                        itemCount: invoicesModel!.data!.length,
                        shrinkWrap: true,
                        physics: const BouncingScrollPhysics(),
                        padding: EdgeInsets.zero,
                        itemBuilder: (BuildContext context, int index) {
                          return AnimationConfiguration.staggeredList(
                            position: index,
                            duration: const Duration(milliseconds: 375),
                            child: SlideAnimation(
                              verticalOffset: 50.0,
                              child: FadeInAnimation(
                                child: InvoicesWidget(
                                    invoicesModel: invoicesModel!.data![index]),
                              ),
                            ),
                          );
                        },
                      ),
                    ),
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: AppColors.primaryAppColor,
        child: const Icon(
          Icons.add,
          color: AppColors.whiteColor,
        ),
      ),
    );
  }

  getAllInvoices() async {
    invoicesModel = await InvoicesApi().getAllInvoices();
    setState(() {
      loading = false;
    });
  }
}

class InvoicesWidget extends StatelessWidget {
  final Data invoicesModel;
  const InvoicesWidget({
    Key? key,
    required this.invoicesModel,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 5.h),
      width: double.infinity,
      padding: const EdgeInsets.all(10.0),
      decoration: BoxDecoration(
          color: AppColors.whiteColor,
          borderRadius: BorderRadius.circular(10.0),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.2),
              spreadRadius: 0,
              blurRadius: 1,
              offset: const Offset(0, 1),
            )
          ]),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          AppTexts().customAppText(
              title: "Empolyee Name :- ${invoicesModel.employeeName}",
              size: 15.sp,
              color: AppColors.primaryAppColor),
          customSizedBox(0.0, 5.h),
          AppTexts().customAppText(
              title: "POSName :- ${invoicesModel.posName}",
              size: 15.sp,
              color: AppColors.primaryAppColor),
          customSizedBox(0.0, 5.h),
          AppTexts().customAppText(
              title: "Store Name :- ${invoicesModel.storeName}",
              size: 15.sp,
              color: AppColors.primaryAppColor),
          customSizedBox(0.0, 5.h),
          AppTexts().customAppText(
              title: "Items Count :- ${invoicesModel.itemsList!.length}",
              size: 15.sp,
              color: AppColors.primaryAppColor),
          customSizedBox(0.0, 5.h),
          AppTexts().customAppText(
              title: "Customer Count :- ${invoicesModel.customerList!.length}",
              size: 15.sp,
              color: AppColors.primaryAppColor),
        ],
      ),
    );
  }
}
