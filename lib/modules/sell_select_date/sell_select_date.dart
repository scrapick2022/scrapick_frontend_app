import 'package:ecom/modules/widgets/custom_app_bar.dart';
import 'package:ecom/modules/widgets/custom_buttom.dart';
import 'package:ecom/modules/widgets/custom_text.dart';
import 'package:ecom/shared/network/style/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SellSelectDate extends StatefulWidget {
  SellSelectDate({Key? key}) : super(key: key);

  @override
  State<SellSelectDate> createState() => _SellSelectDateState();
}

class _SellSelectDateState extends State<SellSelectDate> {
  String? valueshoose;

  List ListItem = [
    "item 1",
    "item 2",
    "item 3",
    "item 4",
    "item 5",
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: [
              const CustomAppBar(),
              Padding(
                padding: EdgeInsets.only(left: 36.w, right: 97.w),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 19.h,
                    ),
                    CustomText(
                      text: "select a date for\n scrap pickup",
                      size: 32.sp,
                      fontWeight: FontWeight.w400,
                    ),
                    SizedBox(
                      height: 46.h,
                    ),
                    Container(
                      decoration: BoxDecoration(
                          color: grey4,
                          border: const Border(
                              bottom: BorderSide(),
                              right: BorderSide(),
                              left: BorderSide(),
                              top: BorderSide())),
                      child: DropdownButton(
                          dropdownColor: grey,
                          elevation: 0,
                          hint: Padding(
                            padding: EdgeInsets.only(left: 18.w),
                            child: CustomText(
                                text: "Date ",
                                size: 14.sp,
                                fontWeight: FontWeight.w400),
                          ),
                          icon: Icon(
                            Icons.arrow_drop_down_sharp,
                            size: 50.w,
                          ),
                          isExpanded: true,
                          underline: const SizedBox(),
                          value: valueshoose,
                          onChanged: (value) {
                            setState(() {
                              valueshoose = value as String?;
                            });
                          },
                          items: ListItem.map((valueItem) {
                            return DropdownMenuItem(
                              alignment: Alignment.center,
                              child: Text(valueItem),
                              value: valueItem,
                            );
                          }).toList()),
                    ),
                    SizedBox(
                      height: 15.h,
                    ),
                    CustomText(
                      text:
                          "Pickup time between 10:am- 6pm our pickup exective will call you before coming.",
                      size: 12.sp,
                      fontWeight: FontWeight.w400,
                      ColorText: black2,
                    ),
                    SizedBox(
                      height: 28.w,
                    ),
                    Container(
                      decoration: BoxDecoration(
                          color: grey4,
                          border: const Border(
                              bottom: BorderSide(),
                              right: BorderSide(),
                              left: BorderSide(),
                              top: BorderSide())),
                      child: DropdownButton(
                          dropdownColor: grey,
                          elevation: 0,
                          hint: Padding(
                            padding: EdgeInsets.only(left: 18.w),
                            child: CustomText(
                                text: "Add ",
                                size: 14.sp,
                                fontWeight: FontWeight.w400),
                          ),
                          icon: Icon(
                            Icons.arrow_drop_down_sharp,
                            size: 50.w,
                          ),
                          isExpanded: true,
                          underline: const SizedBox(),
                          value: valueshoose,
                          onChanged: (value) {
                            setState(() {
                              valueshoose = value as String?;
                            });
                          },
                          items: ListItem.map((valueItem) {
                            return DropdownMenuItem(
                              alignment: Alignment.center,
                              child: Text(valueItem),
                              value: valueItem,
                            );
                          }).toList()),
                    ),
                    SizedBox(
                      height: 80.h,
                    )
                  ],
                ),
              ),
              InkWell(
                child: Expanded(
                  flex: 1,
                  child: Container(
                    width: 101.w,
                    height: 93.h,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: grey4,
                    ),
                    child: Stack(children: [
                      Padding(
                          padding: EdgeInsets.only(
                              left: 26.w, top: 23.h, right: 26.w, bottom: 25.h),
                          child: Expanded(
                            child: Container(
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: black,
                              ),
                            ),
                          )),
                      Padding(
                        padding: EdgeInsets.only(
                            left: 35.w, top: 30.h, right: 35.w, bottom: 32.h),
                        child: Expanded(
                          child: Container(
                            //  width: 35.w,
                            // height: 47.h,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: grey5,
                            ),
                          ),
                        ),
                      ),
                    ]),
                  ),
                ),
              ),
              SizedBox(
                height: 5.h,
              ),
              CustomText(
                text: "Take a Pictuers",
                size: 16.sp,
                fontWeight: FontWeight.w400,
              ),
              SizedBox(
                height: 70.h,
              ),
              CustomButtom(text: "Continue", onfun: () {}),
              SizedBox(
                height: 17.h,
              )
            ],
          ),
        ),
      ),
    );
  }
}
