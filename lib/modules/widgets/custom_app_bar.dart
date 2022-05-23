import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../shared/network/style/colors.dart';
import 'custom_text.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
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
              padding: EdgeInsets.only(top: 55.h, right: 18.w),
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Icon(
                      Icons.arrow_back,
                      size: 56.w,
                      color: white,
                    ),
                    CustomText(
                      text: "sell scrap",
                      size: 36.sp,
                      fontWeight: FontWeight.w400,
                      ColorText: white,
                    ),
                    SizedBox(
                      width: 98.w,
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 8.h),
                      child: CustomText(
                        text: "cancel",
                        size: 24.sp,
                        fontWeight: FontWeight.w300,
                        ColorText: white,
                      ),
                    ),
                  ]),
            ),
          )
        ],
      ),
    );
  }
}
