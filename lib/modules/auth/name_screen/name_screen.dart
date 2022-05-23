import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../shared/network/style/colors.dart';
import '../../widgets/custom_buttom.dart';
import '../../widgets/custom_text.dart';
import '../../widgets/cutsom_text_form_filed.dart';
import '../../widgets/custom_logo.dart';

class NameScreen extends StatelessWidget {
  const NameScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: SingleChildScrollView(
        child: Column(children: [
          Container(
              width: double.infinity,
              height: 130.h,
              color: green,
              child: Stack(
                children: [
                  Container(
                    height: 130.h,
                    width: double.infinity,
                    decoration: BoxDecoration(
                        border: const Border(
                            left: BorderSide(width: 1, color: Colors.black),
                            right: BorderSide(width: 1, color: Colors.black),
                            top: BorderSide(width: 1, color: Colors.black),
                            bottom: BorderSide()),
                        color: green,
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(30.r),
                            topRight: Radius.circular(30.r))),
                    child: Padding(
                      padding: EdgeInsets.only(
                        left: 50.w,
                        right: 32.w,
                      ),
                      child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Icon(
                              Icons.arrow_back,
                              size: 56.w,
                              color: white,
                            ),
                            CustomText(
                              text: "Name",
                              size: 36.sp,
                              fontWeight: FontWeight.w400,
                              ColorText: white,
                            ),
                          ]),
                    ),
                  )
                ],
              )),
          SizedBox(height: 8.h),
          const Logo(),
          SizedBox(
            height: 46.h,
          ),
          Padding(
            padding: EdgeInsets.only(right: 211.w, left: 49.w),
            child: CustomText(
              text: "Type  your name",
              size: 20.sp,
              fontWeight: FontWeight.w400,
            ),
          ),
          SizedBox(height: 15.h),
          CustomTextFormField(
            keyboard: TextInputType.emailAddress,
          ),
          SizedBox(height: 70.h),
          CustomButtom(
            text: "Update",
            onfun: () {},
          )
        ]),
      ),
    ));
  }
}
