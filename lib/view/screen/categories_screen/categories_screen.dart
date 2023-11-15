

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../utils/app_color_resources/app_color_resources.dart';
import '../../../utils/app_style.dart';

class CategoriesScreen extends StatelessWidget {
   static const String routeName = '/categories_route';
   CategoriesScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColorResources.primaryColor.withOpacity(0.92),
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(kToolbarHeight),
        child: AppBar(
          backgroundColor: AppColorResources.primaryColor,
          elevation: 0,
          title: Text('Categories',style: myStyleInter(16.sp, AppColorResources.subBlackColor,FontWeight.w700),),
          actions: [
            Padding(
              padding:  EdgeInsets.only(right: 20.0.w),
              child: Icon(Icons.shopping_cart,size: 19.sp,),
            ),
          ],

        ),
      ),

      body: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Expanded(
              flex: 1,
              child: Column(
                children: [
                  Text('Hello'),
                  Text('Hello'),
                  Text('Hello'),
                  Text('Hello'),
                  Text('Hello'),
                  Text('Hello'),
                  Text('Hello'),
                  Text('Hello'),
                  Text('Hello'),
                  Text('Hello'),
                  Text('Hello'),
                  Text('Hello'),
                  Text('Hello'),
                  Text('Hello'),
                ],
              )
          ),
          Expanded(
              flex: 4,
              child: Column(
                children: [
                  Text('Hello'),
                  Text('Hello'),
                  Text('Hello'),
                  Text('Hello'),
                  Text('Hello'),
                  Text('Hello'),
                  Text('Hello'),
                  Text('Hello'),
                  Text('Hello'),
                  Text('Hello'),
                  Text('Hello'),
                  Text('Hello'),
                  Text('Hello'),
                  Text('Hello'),
                ],
              )
          )
        ],
      ),

    );
  }
}
