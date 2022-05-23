import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../shared/network/style/colors.dart';

class CustomButtom extends StatelessWidget {
  final String text;
  final TextDecoration? deco;
  final Function onfun;
  const CustomButtom(
      {Key? key, required this.text, this.deco, required this.onfun})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(left: 89.w, right: 80.w),
        child: SizedBox(
          width: 249,
          child: MaterialButton(
              height: 80.h,
              padding: EdgeInsets.only(
                left: 40.w,
                right: 39.w,
              ),
              shape: RoundedRectangleBorder(
                  side: const BorderSide(color: Colors.black),
                  borderRadius: BorderRadius.circular(10.r)),
              color: green,
              onPressed: () {
                onfun();
              },
              child: Text(
                text,
                style:
                    TextStyle(fontSize: 36.sp, color: white, decoration: deco),
              )),
        ));
  }
}
