import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomTextFormField extends StatelessWidget {
  final TextInputType keyboard;
  final String? text;
  TextEditingController controller = TextEditingController();
  CustomTextFormField({Key? key, required this.keyboard, this.text})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: 30.w,
      ),
      child: SizedBox(
        height: 45,
        child: TextField(
          keyboardType: keyboard,
          controller: controller,
          decoration: InputDecoration(
              contentPadding:
                  EdgeInsets.only(left: 15.w, top: 11.h, bottom: 10.h),
              hintText: text,
              hintStyle: const TextStyle(),
              border: const OutlineInputBorder()),
        ),
      ),
    );
  }
}
