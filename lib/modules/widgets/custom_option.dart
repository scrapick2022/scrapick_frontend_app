import 'package:ecom/modules/widgets/custom_text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hexcolor/hexcolor.dart';

import '../../shared/network/style/colors.dart';

class Option extends StatelessWidget {
  final String text;
  final String text2;
  final double textSize;
  final double textSize2;

  const Option({
    Key? key,
    required this.text,
    required this.text2,
    this.textSize = 14,
    this.textSize2 = 14,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        decoration: BoxDecoration(
            color: grey6, borderRadius: BorderRadius.circular(10.r)),
        child: Padding(
          padding:
              EdgeInsets.only(left: 14.w, right: 34.w, top: 16.h, bottom: 7.h),
          child: Column(
            children: [
              CustomText(
                text: text,
                size: textSize,
                fontWeight: FontWeight.w400,
              ),
              SizedBox(
                height: 6.h,
              ),
              CustomText(
                  text: text2, size: textSize2, fontWeight: FontWeight.w400)
            ],
          ),
        ),
      ),
    );
  }
}
