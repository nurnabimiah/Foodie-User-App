

import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:foodie_resturent_user_app/utils/app_color_resources/app_color_resources.dart';
import '../../../utils/app_style.dart';
import '../../widget/app_bar_widget/reusable_app_bar.dart';


class OrderDetailsScreen extends StatelessWidget {
  static const String routeName = '/order_details_route';
  const OrderDetailsScreen({Key? key}) : super(key: key);



  @override
  Widget build(BuildContext context) {
    int itemCount = 2;
    return Scaffold(
      backgroundColor: AppColorResources.primaryColor.withOpacity(0.92),
      appBar: PreferredSize(
          preferredSize: Size.fromHeight(kToolbarHeight),
          child: ReusableAppBar(appBarTitle: 'Order Details',)),

      body: SingleChildScrollView(
        child: Column(
          children: [

            Padding(
              padding: EdgeInsets.only(top: 10.h),
              child: Container(
                width: double.infinity,
                color: AppColorResources.primaryWhiteColor,
                child: ExpansionTile(

                  title: Text('Items ($itemCount)'),
                  children: [
                    Container(
                      // Adjust the height based on item count and item height
                      height: itemCount * 70.0,
                      child: ListView.separated(
                        shrinkWrap: true,
                        physics: NeverScrollableScrollPhysics(),
                        itemCount: itemCount,
                        separatorBuilder: (BuildContext context, int index)=>Divider(thickness: 0.3,),
                        itemBuilder: (BuildContext context, int index) {
                          return Padding(
                            padding:  EdgeInsets.only(right: 12.0.w),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                  children: [
                                    Image.network('https://nutritionaustralia.org/app/uploads/2021/08/shutterstock_623425481.jpg',height: 70.h,width: 70.w,),
                                    Text('Foodie Flavour', style: myStyleInter(14.sp, AppColorResources.subBlackColor, FontWeight.w500,),)
                                  ],
                                ),
                                Text('2 X \$2.2', style: myStyleInter(14.sp, AppColorResources.subBlackColor, FontWeight.w500,),)
                              ],



                            ),
                          );
                        },
                      ),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
