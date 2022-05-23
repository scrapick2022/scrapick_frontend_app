import 'package:ecom/modules/widgets/custom_text.dart';
import 'package:ecom/shared/network/style/colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SellScreen extends StatelessWidget {
  const SellScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding: EdgeInsets.only(top: 23.h, left: 43.w, right: 43.w),
              child: Row(
                children: [
                  Column(
                    children: [
                      Image.asset(
                        "assets/images/call.png",
                        width: 53.w,
                        height: 54.h,
                      ),
                      CustomText(
                        text: "call us",
                        ColorText: green,
                        size: 24.sp,
                      )
                    ],
                  ),
                  const Spacer(),
                  Column(
                    children: [
                      Image.asset(
                        "assets/images/whatsapp.png",
                        width: 54.w,
                        height: 67.h,
                      ),
                      CustomText(
                        text: "whatsup",
                        ColorText: green,
                        size: 24.sp,
                      )
                    ],
                  )
                ],
              ),
            ),
            SizedBox(
              height: 47.h,
            ),
            CustomText(
              text: "What Would You Like TO Sell?",
              fontWeight: FontWeight.w700,
              size: 24.sp,
              deco: TextDecoration.underline,
            ),
            SizedBox(
              height: 5.sp,
            ),
            CustomText(
              text: "क्या बेचना है ?",
              size: 24.sp,
              fontWeight: FontWeight.w400,
            ),
            SizedBox(height: 39.sp),
            Padding(
              padding: EdgeInsets.only(left: 34.w, right: 95.w),
              child: Row(
                children: [
                  Column(
                    children: [
                      Container(
                        width: 119.w,
                        height: 119.h,
                        decoration: BoxDecoration(
                            border: const Border(
                                bottom: BorderSide(),
                                left: BorderSide(),
                                right: BorderSide(),
                                top: BorderSide()),
                            color: grey2),
                        child: Column(children: [
                          Padding(
                            padding: EdgeInsets.only(right: 80.w),
                            child: CustomText(
                              text: "Paper",
                              size: 11.sp,
                            ),
                          ),
                          SizedBox(
                            height: 17.h,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Stack(
                                children: [
                                  Image.asset(
                                    "assets/images/download-removebg-preview 1.png",
                                    width: 61.w,
                                    height: 37.h,
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(left: 30.w),
                                    child: Image.asset(
                                      "assets/images/Newspaper-clipart-free-download-removebg-preview 1.png",
                                      width: 52.w,
                                      height: 44.h,
                                    ),
                                  ),
                                  Padding(
                                    padding:
                                        EdgeInsets.only(left: 30.w, top: 25.h),
                                    child: Image.asset(
                                      "assets/images/download__1_-removebg-preview 1.png",
                                      width: 51.w,
                                      height: 35.h,
                                    ),
                                  ),
                                ],
                              )
                            ],
                          )
                        ]),
                      ),
                      SizedBox(
                        height: 5.h,
                      ),
                      CustomText(
                        text: "Newspapers,Cartoon\nBooks",
                        size: 10.sp,
                        fontWeight: FontWeight.w400,
                      )
                    ],
                  ),
                  SizedBox(width: 61.w),
                  Column(
                    children: [
                      Container(
                        width: 119.w,
                        height: 119.h,
                        decoration: BoxDecoration(
                            border: const Border(
                                bottom: BorderSide(),
                                left: BorderSide(),
                                right: BorderSide(),
                                top: BorderSide()),
                            color: grey2),
                        child: Column(children: [
                          Padding(
                            padding: EdgeInsets.only(right: 80.w),
                            child: CustomText(
                              text: "Paper",
                              size: 11.sp,
                            ),
                          ),
                          SizedBox(
                            height: 17.h,
                          ),
                          Image.asset(
                            "assets/images/474-4746682_plastic-bottle-clipart-hd-png-removebg-preview 1.png",
                            width: 60.w,
                            height: 58.h,
                          ),
                        ]),
                      ),
                      SizedBox(
                        height: 5.h,
                      ),
                      CustomText(
                          text: "Fiber,botttals,\nHard/Soft",
                          size: 10.sp,
                          fontWeight: FontWeight.w400)
                    ],
                  )
                ],
              ),
            ),
            SizedBox(
              height: 6.h,
            ),
            Padding(
              padding: EdgeInsets.only(left: 34.w, right: 95.w),
              child: Row(
                children: [
                  Column(
                    children: [
                      Container(
                        width: 119.w,
                        height: 119.h,
                        decoration: BoxDecoration(
                            border: const Border(
                                bottom: BorderSide(),
                                left: BorderSide(),
                                right: BorderSide(),
                                top: BorderSide()),
                            color: grey2),
                        child: Column(children: [
                          Padding(
                            padding: EdgeInsets.only(right: 80.w),
                            child: CustomText(
                              text: "Metals",
                              size: 11.sp,
                            ),
                          ),
                          SizedBox(
                            height: 17.h,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Stack(
                                children: [
                                  Padding(
                                    padding: EdgeInsets.only(left: 10.h),
                                    child: Image.asset(
                                      "assets/images/images-removebg-preview 1.png",
                                      width: 60.w,
                                      height: 56.h,
                                    ),
                                  ),
                                  Padding(
                                    padding:
                                        EdgeInsets.only(left: 40.w, top: 20.h),
                                    child: Image.asset(
                                      "assets/images/kisspng-metal-structural-steel-beam-clip-art-benching-cliparts-5a7b2df40fcd39 1.png",
                                      width: 34.w,
                                      height: 38.h,
                                    ),
                                  ),
                                  Padding(
                                    padding:
                                        EdgeInsets.only(right: 30.w, top: 35.h),
                                    child: Image.asset(
                                      "assets/images/kisspng-metal-structural-steel-beam-clip-art-benching-cliparts-5a7b2df40fcd39 1.png",
                                      width: 51.w,
                                      height: 35.h,
                                    ),
                                  ),
                                ],
                              )
                            ],
                          )
                        ]),
                      ),
                      SizedBox(
                        height: 5.h,
                      ),
                      CustomText(
                        text: "Tin, copper, AluminiumIron\n etc..",
                        size: 10.sp,
                        fontWeight: FontWeight.w400,
                      )
                    ],
                  ),
                  SizedBox(width: 61.w),
                  Column(
                    children: [
                      Container(
                        width: 119.w,
                        height: 119.h,
                        decoration: BoxDecoration(
                            border: const Border(
                                bottom: BorderSide(),
                                left: BorderSide(),
                                right: BorderSide(),
                                top: BorderSide()),
                            color: grey2),
                        child: Column(children: [
                          Padding(
                            padding: EdgeInsets.only(right: 70.w),
                            child: CustomText(
                              text: "E-Waste",
                              size: 11.sp,
                            ),
                          ),
                          SizedBox(
                            height: 17.h,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Stack(
                                children: [
                                  Image.asset(
                                    "assets/images/black-white-doodle-retro-computer-hand-drawn-doodle-vector-illustration-black-white-doodle-retro-computer-188409336-removebg-preview 1.png",
                                    width: 60.w,
                                    height: 58.h,
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(left: 23.w),
                                    child: Image.asset(
                                      "assets/images/gamepad-sketch-icon-hand-drawn-vector-8529048-removebg-preview 1.png",
                                      width: 60.w,
                                      height: 58.h,
                                    ),
                                  ),
                                ],
                              )
                            ],
                          )
                        ]),
                      ),
                      SizedBox(
                        height: 5.h,
                      ),
                      CustomText(
                          text: "Computer,  TV,\nprinter...",
                          size: 10.sp,
                          fontWeight: FontWeight.w400)
                    ],
                  )
                ],
              ),
            ),
            SizedBox(height: 6.h),
            Padding(
              padding: EdgeInsets.only(left: 34.w, right: 95.w),
              child: Row(
                children: [
                  Column(
                    children: [
                      Container(
                        width: 119.w,
                        height: 119.h,
                        decoration: BoxDecoration(
                            border: const Border(
                                bottom: BorderSide(),
                                left: BorderSide(),
                                right: BorderSide(),
                                top: BorderSide()),
                            color: grey2),
                        child: Column(children: [
                          Padding(
                            padding: EdgeInsets.only(right: 50.w),
                            child: CustomText(
                              text: "Other Items",
                              size: 11.sp,
                            ),
                          ),
                          SizedBox(
                            height: 17.h,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Stack(
                                children: [
                                  Image.asset(
                                    "assets/images/fridge-fridge-fridge-freezer-icon-with-png-and-vector-format-232988-removebg-preview 1.png",
                                    width: 38.w,
                                    height: 62.h,
                                  ),
                                  Padding(
                                    padding:
                                        EdgeInsets.only(left: 30.w, top: 35.h),
                                    child: Image.asset(
                                      "assets/images/Vector 1.png",
                                      width: 21.w,
                                      height: 21.h,
                                    ),
                                  ),
                                ],
                              )
                            ],
                          ),
                        ]),
                      ),
                      SizedBox(
                        height: 5.h,
                      ),
                      CustomText(
                        text: "Home Appliances etc..",
                        size: 10.sp,
                        fontWeight: FontWeight.w400,
                      )
                    ],
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 78.w),
              child: MaterialButton(
                color: grey3,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.r)),
                onPressed: () {},
                child: CustomText(
                  text: "Raise Pickup Request",
                  size: 20.sp,
                  fontWeight: FontWeight.w700,
                  ColorText: green3,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
