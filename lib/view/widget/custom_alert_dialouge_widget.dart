


import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:foodie_resturent_user_app/utils/app_color_resources/app_color_resources.dart';
import 'package:foodie_resturent_user_app/utils/app_style.dart';
import 'package:foodie_resturent_user_app/view/screen/favourite_list_screen/favourite_list_screen.dart';
import 'package:foodie_resturent_user_app/view/screen/order_screen/my_order_screen.dart';
import 'package:get/get.dart';
import 'package:lottie/lottie.dart';

class CustomAlertDialog extends StatelessWidget {

  final String message;

  CustomAlertDialog({ required this.message});

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Column(
        children: [
          Lottie.asset('assets/lottie_files/cancel_order_lottie.json',height: 100.h,width: 200.w),
        ],
      ),
      content: Text(message,style: myStyleInter(14.sp, AppColorResources.primaryBlack,FontWeight.w600),),
      actions: [
        Container(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Flexible(

                child: GestureDetector(
                  onTap: (){
                    //Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (context)=>FavouriteListScreen()), (route) => false);
                    Navigator.pop(context);
                  },
                  child: Container(
                    height: 40.h,
                    width: double.infinity,
                    color: AppColorResources.primaryColor,
                    child: Center(child: Text('No',style: myStyleInter(14.sp, AppColorResources.primaryBlack,FontWeight.w500),)),
                  ),
                ),
              ),

              Flexible(
                child: GestureDetector(
                  onTap: (){
                    Get.toNamed(MyOrderScreen.routeName);
                  },
                  child: Container(
                    height: 40.h,
                    width: double.infinity,
                    color: Colors.red,
                    child: Center(child: Text('Yes',style: myStyleInter(14.sp, AppColorResources.primaryWhiteColor,FontWeight.w500),)),
                  ),
                ),
              )


            ],
          ),
        )
      ],
    );
  }
}


