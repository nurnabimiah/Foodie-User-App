

import 'package:flutter/material.dart';
import 'package:foodie_resturent_user_app/view/screen/favourite_list_screen/favourite_list_screen.dart';
import 'package:foodie_resturent_user_app/view/screen/profile_screen/profile_screen.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';

import '../view/screen/categories_screen/categories_screen.dart';
import '../view/screen/home_screen/home_screen.dart';
import '../view/screen/order_screen/order_details_screen.dart';

class BottomNavController extends GetxController {
  int selectedIndex = 0;
  List<Widget> screens = [
    HomeScreen(),
    //OrderDetailsScreen(),
    CategoriesScreen(),
    FavouriteListScreen(),
    ProfileScreen(),
  ];

  Widget get currentScreen => screens[selectedIndex];

  void changeScreen(int index) {
    selectedIndex = index;
    update();
  }
}