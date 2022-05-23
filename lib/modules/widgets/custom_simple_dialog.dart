import 'package:ecom/modules/widgets/custom_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../shared/network/style/colors.dart';

showodialog(Context) {
  return showDialog(
      context: Context,
      builder: (context) {
        return Container(
          child: AlertDialog(
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(40.r)),
            title: CustomText(
              text: "Are you sure you want to\nlogout?",
              size: 24.sp,
              fontWeight: FontWeight.w400,
            ),
            content: Container(
                child: Padding(
              padding: EdgeInsets.only(top: 60.h),
              child: Row(
                children: [
                  TextButton(
                    onPressed: () {},
                    child: CustomText(
                      text: "No",
                      size: 24.sp,
                      fontWeight: FontWeight.w400,
                      ColorText: green,
                    ),
                  ),
                  const Spacer(),
                  TextButton(
                    onPressed: () {},
                    child: CustomText(
                      text: "yes",
                      size: 24.sp,
                      fontWeight: FontWeight.w400,
                      ColorText: green,
                    ),
                  ),
                ],
              ),
            )),
          ),
        );
      });
}

// showofdialog(Context) {
//   return showDialog(
//       context: Context,
//       builder: (context) {
//         return AlertDialog(
//           Container(
//             width: 200.w,
//             height: 82.h,
//             decoration: BoxDecoration(color: white),
//             child: Column(
//               children: [
//                 CustomText(
//                   text: "Are you sure you want to\nlogout?",
//                   size: 24.sp,
//                   fontWeight: FontWeight.w400,
//                 ),
//                 SizedBox(
//                   height: 79.h,
//                 ),
//                 Row(
//                   children: [
//                     TextButton(
//                       onPressed: () {},
//                       child: CustomText(
//                         text: "No",
//                         size: 24.sp,
//                         fontWeight: FontWeight.w400,
//                         ColorText: green,
//                       ),
//                     ),
//                     const Spacer(),
//                     TextButton(
//                       onPressed: () {},
//                       child: CustomText(
//                         text: "yes",
//                         size: 24.sp,
//                         fontWeight: FontWeight.w400,
//                         ColorText: green,
//                       ),
//                     ),
//                   ],
//                 )
//               ],
//             ),
//           ),
//         );
//       });
// }
