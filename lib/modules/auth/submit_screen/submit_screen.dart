import 'package:ecom/modules/auth/otp_screen/otp_screen.dart';
import 'package:ecom/modules/widgets/custom_buttom.dart';
import 'package:ecom/modules/widgets/custom_logo.dart';
import 'package:ecom/modules/widgets/custom_text.dart';
import 'package:ecom/modules/widgets/cutsom_text_form_filed.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SubmitScreen extends StatelessWidget {
  SubmitScreen({Key? key}) : super(key: key);

  TextEditingController phone = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.only(top: 136.h, left: 10.w, right: 10.w),
            child: Column(
              children: [
                const Logo(),
                SizedBox(
                  height: 31.h,
                ),
                Padding(
                    padding: EdgeInsets.only(left: 49.w, right: 196.w),
                    child: CustomText(
                      text: "Type your mobail\nnumber",
                      size: 20.sp,
                      fontWeight: FontWeight.w400,
                    )),
                const SizedBox(
                  height: 10,
                ),
                SizedBox(
                    height: 45,
                    child: CustomTextFormField(
                      text: "+91 mobaile number",
                      keyboard: TextInputType.emailAddress,
                    )),
                SizedBox(
                  height: 70.h,
                ),
                CustomButtom(
                    text: "Send OTP",
                    onfun: () {
                      Navigator.of(context).push(
                          MaterialPageRoute(builder: (context) => OtpScreen()));
                    }),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
