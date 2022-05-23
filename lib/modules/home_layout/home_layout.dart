import 'package:ecom/business%20logic/cubit/home_cubit.dart';
import 'package:ecom/shared/network/style/colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HomeLayout extends StatelessWidget {
  const HomeLayout({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<HomeCubit, HomeState>(
      listener: (context, state) {},
      builder: (context, state) {
        HomeCubit cubit = HomeCubit.get(context);
        return SafeArea(
          child: Scaffold(
            bottomNavigationBar: BottomNavigationBar(
                type: BottomNavigationBarType.fixed,
                currentIndex: cubit.currentIndex,
                fixedColor: green,
                selectedFontSize: 20.sp,
                unselectedFontSize: 20.sp,
                unselectedItemColor: grey,
                onTap: (index) {
                  cubit.bottomNavigationChange(index);
                },
                items: [
                  BottomNavigationBarItem(
                    icon: Image.asset("assets/images/Vector (3).png"),
                    label: "sell",
                  ),
                  BottomNavigationBarItem(
                      icon: Image.asset("assets/images/item.png"),
                      label: "items"),
                  BottomNavigationBarItem(
                      icon: Image.asset("assets/images/Vector (2).png"),
                      label: "order"),
                  BottomNavigationBarItem(
                      icon: Image.asset("assets/images/Vector (4).png"),
                      label: "profile")
                ]),
            body: cubit.scereens[cubit.currentIndex],
          ),
        );
      },
    );
  }
}
