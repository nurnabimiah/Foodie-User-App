


import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../utils/app_color_resources/app_color_resources.dart';
import '../../../utils/app_style.dart';
import '../../widget/app_bar_widget/reusable_app_bar.dart';

class NotificationScreen extends StatelessWidget {
  static const String routeName = '/notification_route';
  const NotificationScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //backgroundColor: AppColorResources.primaryColor.withOpacity(0.92),
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(kToolbarHeight),
        child: ReusableAppBar(appBarTitle: 'Notifications',)
      ),


      body: Container(
        color:AppColorResources.primaryColor.withOpacity(0.67),
        width: double.infinity,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
           SizedBox(height: 10.h,) ,
           Text('Today',style: myStyleInter(14.sp, AppColorResources.primaryBlack,FontWeight.w700)),



          ],
        ),
      ),


    );
  }
}
