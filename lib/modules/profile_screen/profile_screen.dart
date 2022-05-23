import 'package:ecom/modules/auth/address_screen/address_screen.dart';
import 'package:ecom/modules/auth/email_screen/email_screen.dart';
import 'package:ecom/modules/auth/update_phone/update_phone.dart';
import 'package:ecom/modules/widgets/custom_text.dart';
import 'package:ecom/shared/network/style/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../widgets/custom_simple_dialog.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 126.h,
              width: double.infinity,
              decoration: BoxDecoration(
                color: green,
              ),
              child: Padding(
                padding: EdgeInsets.only(left: 50.w, right: 32.w, top: 45.h),
                child: Row(children: [
                  CustomText(
                    text: "Profile",
                    size: 36.sp,
                    fontWeight: FontWeight.w400,
                    ColorText: white,
                  ),
                  const Spacer(),
                  Icon(
                    Icons.person,
                    size: 53.w,
                    color: white,
                  )
                ]),
              ),
            ),
            SizedBox(height: 39.h),
            Padding(
              padding: EdgeInsets.only(left: 15.w, right: 8.w),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Stack(
                    children: [
                      Image.asset(
                        "assets/images/Ellipse 4.png",
                        width: 100.w,
                        height: 100.h,
                      ),
                      Padding(
                        padding:
                            EdgeInsets.only(left: 20.w, right: 24.w, top: 14.h),
                        child: Icon(
                          Icons.person,
                          size: 62.w,
                          color: white,
                        ),
                      )
                    ],
                  ),
                  Padding(
                    padding: EdgeInsets.only(right: 148.h),
                    child: CustomText(
                      text: "XYZ",
                      size: 24.sp,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  TextButton(
                    onPressed: () {},
                    child: CustomText(
                      text: "Change",
                      size: 16.sp,
                      fontWeight: FontWeight.w300,
                      ColorText: green,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 38.h,
            ),
            Padding(
              padding: EdgeInsets.only(left: 38.w, right: 17.w),
              child: Column(
                children: [
                  Row(
                    children: [
                      Column(
                        children: [
                          CustomText(
                            text: "Mobile Number",
                            size: 20.sp,
                            fontWeight: FontWeight.w300,
                          ),
                          CustomText(
                            text: "92600474**",
                            size: 24.sp,
                            fontWeight: FontWeight.bold,
                          ),
                       
                        ],
                      ),
                      const Spacer(),
                      InkWell(
                        onTap: () {
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => const UpdatePhone()));
                        },
                        child: CustomText(
                          text: "Change",
                          size: 16.sp,
                          fontWeight: FontWeight.w300,
                          ColorText: green,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 39.h),
                  Row(
                    children: [
                      CustomText(
                        text: "Email address",
                        size: 20.sp,
                        fontWeight: FontWeight.w300,
                      ),
                      const Spacer(),
                      InkWell(
                        onTap: () {
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => const EmailScreen()));
                        },
                        child: CustomText(
                          text: "Change",
                          size: 16.sp,
                          fontWeight: FontWeight.w300,
                          ColorText: green,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 39.h),
                  Row(
                    children: [
                      CustomText(
                        text: "Pickup address",
                        size: 20.sp,
                        fontWeight: FontWeight.w300,
                      ),
                      const Spacer(),
                      InkWell(
                        onTap: () {
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => const AddressScreen()));
                        },
                        child: CustomText(
                          text: "Change",
                          size: 16.sp,
                          fontWeight: FontWeight.w300,
                          ColorText: green,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 63.h),
                  Row(
                    children: [
                      CustomText(
                        text: "Money acceptance mode",
                        size: 16.sp,
                        fontWeight: FontWeight.w300,
                      ),
                    ],
                  ),
                  SizedBox(height: 38.h),
                  Row(
                    children: [
                      CustomText(
                        text: "No Payment Method selected.",
                        size: 16.sp,
                        fontWeight: FontWeight.w300,
                      ),
                      const Spacer(),
                      CustomText(
                        text: "Manage",
                        size: 16.sp,
                        fontWeight: FontWeight.w300,
                        ColorText: green,
                      ),
                    ],
                  ),
                  SizedBox(height: 48.h),
                  Row(
                    children: [
                      InkWell(
                        onTap: () {
                          showodialog(context);
                        },
                        child: CustomText(
                          text: "Log out",
                          size: 16.sp,
                          fontWeight: FontWeight.w300,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
