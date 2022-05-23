import 'package:ecom/modules/home_layout/home_layout.dart';
import 'package:ecom/modules/sell_screen/sell_screen.dart';
import 'package:ecom/modules/widgets/custom_buttom.dart';
import 'package:ecom/modules/widgets/custom_logo.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:otp_text_field/otp_field.dart';
import 'package:otp_text_field/otp_field_style.dart';
import 'package:otp_text_field/style.dart';

import '../../../shared/network/style/colors.dart';
import '../../widgets/custom_text.dart';

class OtpScreen extends StatelessWidget {
  const OtpScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.only(top: 136.h, left: 10, right: 10),
          child: Container(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const Logo(),
                SizedBox(
                  height: 20.h,
                ),
                Padding(
                  padding: EdgeInsets.only(right: 100.w),
                  child: CustomText(
                    text: "please wait",
                    size: 22.sp,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                CustomText(
                  text: "we will auto verify the otp",
                  size: 20.sp,
                  fontWeight: FontWeight.w400,
                ),
                SizedBox(
                  height: 10.h,
                ),
                Padding(
                  padding: EdgeInsets.only(left: 94.w, right: 90.w),
                  child: OTPTextField(
                    onChanged: (value) => print(value),
                    otpFieldStyle: OtpFieldStyle(
                      borderColor: Colors.black,
                    ),
                    length: 4,
                    width: MediaQuery.of(context).size.width,
                    fieldWidth: 40,
                    style: const TextStyle(fontSize: 17),
                    textFieldAlignment: MainAxisAlignment.start,
                    fieldStyle: FieldStyle.box,
                    onCompleted: (pin) {
                      print("Completed: " + pin);
                    },
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    CustomText(
                      text: "Didn't recive OTP?",
                      size: 16.sp,
                      fontWeight: FontWeight.w400,
                    ),
                    TextButton(
                        onPressed: () {},
                        child: Container(
                            decoration: BoxDecoration(
                                border: Border(
                                    bottom:
                                        BorderSide(width: 1, color: green2))),
                            child: CustomText(
                                text: "resent OTP",
                                ColorText: green2,
                                size: 16.sp,
                                fontWeight: FontWeight.w400)))
                  ],
                ),
                SizedBox(
                  height: 24.h,
                ),
                CustomButtom(
                    text: "Continue",
                    onfun: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => const HomeLayout()));
                    })
              ],
            ),
          ),
        ),
      ),
    );
  }
}
