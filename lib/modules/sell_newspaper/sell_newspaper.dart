import 'package:ecom/modules/widgets/custom_app_bar.dart';
import 'package:ecom/modules/widgets/custom_buttom.dart';
import 'package:ecom/modules/widgets/custom_option.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../shared/network/style/colors.dart';
import '../widgets/custom_text.dart';

class SellNewsPaper extends StatelessWidget {
  const SellNewsPaper({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const CustomAppBar(),
            SizedBox(height: 15.h),
            Padding(
              padding: EdgeInsets.only(left: 33.w, right: 197.w),
              child: CustomText(
                text: "select scrap items for pickup",
                size: 15.sp,
                fontWeight: FontWeight.w400,
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 33.w, right: 72.w),
              child: CustomText(
                text: "price may fluctuate because of the recycling industry.",
                size: 12.sp,
                fontWeight: FontWeight.w400,
                ColorText: black2,
              ),
            ),
            SizedBox(
              height: 17.h,
            ),
            Padding(
              padding: EdgeInsets.only(
                left: 56.w,
              ),
              child: CustomText(
                text: "Paper",
                ColorText: green,
              ),
            ),
            SizedBox(
              height: 7.h,
            ),
            Padding(
              padding: EdgeInsets.only(right: 72.w, left: 40.w),
              child: Row(
                children: [
                  Option(text: "Newspaper", text2: "15/kg", textSize: 13.sp),
                  SizedBox(
                    width: 60.w,
                  ),
                  const Option(text: "Cartoon", text2: "13/kg")
                ],
              ),
            ),
            SizedBox(
              height: 21.h,
            ),
            Padding(
              padding: EdgeInsets.only(right: 72.w, left: 40.w),
              child: Row(
                children: [
                  const Option(text: "Books", text2: "12/kg"),
                  SizedBox(
                    width: 60.w,
                  ),
                  Option(
                    text: "Cartoon\n(commercial)",
                    text2: "13/kg",
                    textSize: 12.sp,
                  )
                ],
              ),
            ),
            SizedBox(
              height: 21.h,
            ),
            Padding(
              padding: EdgeInsets.only(right: 72.w, left: 40.w),
              child: Row(
                children: [
                  const Option(text: "copy", text2: "8/kg"),
                  SizedBox(
                    width: 60.w,
                  ),
                  Option(text: "White paperts", textSize: 12.sp, text2: "7/kg")
                ],
              ),
            ),
            SizedBox(
              height: 21.h,
            ),
            Padding(
              padding: EdgeInsets.only(right: 72.w, left: 40.w),
              child: Row(
                children: [
                  Option(text: "Magazines", textSize: 13.sp, text2: "6/kg"),
                  SizedBox(
                    width: 60.w,
                  ),
                  Option(
                    text: "Grey Board",
                    text2: "1/kg",
                    textSize: 13.sp,
                  )
                ],
              ),
            ),
            SizedBox(
              height: 145.h,
            ),
            CustomButtom(
              text: "Continue",
              deco: TextDecoration.underline,
              onfun: () {},
            )
          ],
        ),
      ),
    );
  }
}
