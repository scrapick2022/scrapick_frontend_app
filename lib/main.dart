import 'package:ecom/business%20logic/cubit/home_cubit.dart';
import 'package:ecom/modules/auth/otp_screen/otp_screen.dart';
import 'package:ecom/modules/auth/submit_screen/submit_screen.dart';
import 'package:ecom/modules/auth/update_phone/update_phone.dart';
import 'package:ecom/modules/sell_newspaper/sell_newspaper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'modules/sell_select_date/sell_select_date.dart';

// item
void main() async {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: (const Size(428, 926)),
      builder: (context) => MultiBlocProvider(
        providers: [BlocProvider(create: (context) => HomeCubit())],
        child: MaterialApp(
            debugShowCheckedModeBanner: false,
            title: 'Flutter Demo',
            theme: ThemeData(),
            home: SubmitScreen()),
      ),
    );
  }
}
