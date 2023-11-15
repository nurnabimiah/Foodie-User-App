


import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:foodie_resturent_user_app/utils/app_color_resources/app_color_resources.dart';
import 'package:foodie_resturent_user_app/utils/app_style.dart';
import 'package:foodie_resturent_user_app/view/screen/notification_screen/notification_screen.dart';
import 'package:foodie_resturent_user_app/view/screen/order_screen/order_details_screen.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import '../../widget/app_bar_widget/reusable_app_bar.dart';

class FavouriteListScreen extends StatelessWidget {

  static const String routeName = '/favourite_route';
  const FavouriteListScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColorResources.primaryColor,
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(kToolbarHeight),
        child: AppBar(
          elevation: 0,
          title: Text('Favourite List',style: myStyleInter(14.sp, AppColorResources.subBlackColor,FontWeight.w700),),
          actions: [
            Padding(
                padding:  EdgeInsets.only(right: 8.0.w),
                child: IconButton(onPressed: () {
                  Get.toNamed(NotificationScreen.routeName);
                }, icon:  Icon(Icons.notifications_active,size: 19.sp,),)
            ),
            Padding(
              padding:  EdgeInsets.only(right: 8.0.w),
              child: Icon(Icons.shopping_cart,size: 19.sp,),
            ),
          ],
          // leading: IconButton(onPressed: () {
          //   Get.to(OrderDetailsScreen.routeName);
          // }, icon: Icon(Icons.arrow_back_ios_new_rounded,size: 16.sp,)),
        ),
      ),
      
      body: Padding(
        padding: EdgeInsets.only(top: 8.0.h),
        child: ListView.separated(
          shrinkWrap: true,
          itemCount: 10,
          separatorBuilder: (BuildContext context,index) => SizedBox(height: 10.h,),
          itemBuilder: (BuildContext context,index){
            return Container(
              color: AppColorResources.primaryWhiteColor,

              child: Row(
                children: [
                  Image.network('https://nutritionaustralia.org/app/uploads/2021/08/shutterstock_623425481.jpg',height: 70.h,width: 70.w,),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Sandwich',style: myStyleInter(14.sp, AppColorResources.subBlackColor,FontWeight.w600),),
                      Text('\$2.2',style: myStyleInter(14.sp, AppColorResources.subBlackColor,FontWeight.w500),),
                    ],
                  ),
                  Spacer(),
                  Padding(
                    padding:  EdgeInsets.only(right: 8.0.w),
                    child: Column(
                      children: [
                        Icon(Icons.favorite,color: Colors.pinkAccent.shade200,size: 16.sp,),
                        SizedBox(height: 5.h,),
                        Container(

                           decoration: BoxDecoration(
                             color: Colors.pinkAccent.shade200,
                             borderRadius: BorderRadius.all(Radius.circular(8.r))
                           ),
                          child: Padding(
                            padding: const EdgeInsets.all(6.0),
                            child: Row(
                              children: [
                                Icon(Icons.shopping_cart,color: AppColorResources.subBlackColor,size: 16.sp,),
                                SizedBox(width: 5.w,),
                                Text('Add to cart',style: myStyleInter(10.sp, AppColorResources.primaryWhiteColor,FontWeight.w500),),

                              ],
                            ),
                          ),
                        ),
                        SizedBox(height: 8.h,)
                      ],
                    ),
                  ),


                ],
              ),
            );
          },

        ),
      ),
        

    );


  }
}
