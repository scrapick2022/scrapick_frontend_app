import 'package:bloc/bloc.dart';
import 'package:ecom/modules/item_screen/item_screen.dart';
import 'package:ecom/modules/order_screen/order_screen.dart';
import 'package:ecom/modules/profile_screen/profile_screen.dart';
import 'package:ecom/modules/sell_screen/sell_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meta/meta.dart';

part 'home_state.dart';

class HomeCubit extends Cubit<HomeState> {
  HomeCubit() : super(HomeInitial());
  static HomeCubit get(context) => BlocProvider.of(context);
  int currentIndex = 0;
  List<Widget> scereens = const [
    SellScreen(),
    ItemScreen(),
    OrderScreen(),
    ProfileScreen()
  ];
  void bottomNavigationChange(index) {
    currentIndex = index;
    emit(BottomNavigationBarChange());
  }
}
