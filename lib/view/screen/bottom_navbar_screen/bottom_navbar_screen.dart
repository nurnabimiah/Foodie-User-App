


import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:foodie_resturent_user_app/utils/app_color_resources/app_color_resources.dart';
import 'package:get/get_state_manager/src/simple/get_state.dart';

import '../../../controller/bottom_navbar_controller.dart';

class BottomNavBar extends StatelessWidget {
  static const String routeName = '/bottomNavbar';

  const BottomNavBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<BottomNavController>(
      init: BottomNavController(),
      builder: (controller) => Scaffold(
        resizeToAvoidBottomInset: false,
        body: controller.currentScreen,

        bottomNavigationBar: BottomAppBar(
          height: 55.h,
          elevation: 0,
          color: AppColorResources.primaryColor.withOpacity(0.95),
          notchMargin: 8,
          shape: const CircularNotchedRectangle(
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              IconButton(
                icon: Icon(Icons.home_outlined,size: 24.sp,
                  color: controller.selectedIndex == 0
                      ? AppColorResources.primaryPinkColor
                      : AppColorResources.subBlackColor,
                ),
                onPressed: () => controller.changeScreen(0),
              ),
              IconButton(
                icon:Icon(Icons.category,size: 24.sp,
                  color: controller.selectedIndex == 1
                      ? AppColorResources.primaryPinkColor
                      : AppColorResources.subBlackColor
                ),
                onPressed: () => controller.changeScreen(1),
              ),
              IconButton(
                icon:Icon(Icons.favorite,size: 24.sp,
                  color: controller.selectedIndex == 2
                      ? AppColorResources.primaryPinkColor
                      : AppColorResources.subBlackColor
                ),
                onPressed: () => controller.changeScreen(2),
              ),
              IconButton(
                icon:Icon(Icons.dashboard_outlined,size: 24.sp,
                  color: controller.selectedIndex == 3
                      ? AppColorResources.primaryPinkColor
                      : AppColorResources.subBlackColor
                ),
                onPressed: () => controller.changeScreen(3),
              ),
            ],
          ),
        ),

      ),
    );
  }
}