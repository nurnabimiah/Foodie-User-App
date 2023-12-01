

import 'package:dotted_line/dotted_line.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../utils/app_color_resources/app_color_resources.dart';
import '../../../utils/app_style.dart';

class CheckOutScreen extends StatelessWidget {
   static const String routeName = '/checkout_route';
   CheckOutScreen({Key? key}) : super(key: key);


   final TextEditingController addressController = TextEditingController();
   final TextEditingController phoneController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColorResources.primaryColor.withOpacity(0.94),
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(kToolbarHeight),
        child: AppBar(
          backgroundColor: AppColorResources.primaryColor,
          elevation: 0,
          title: Text('Checkout', style: myStyleInter(14.sp, AppColorResources.subBlackColor, FontWeight.w700),),),),

      body: Column(
        children: [
          SizedBox(height: 10.h,),
          Container(
            color: AppColorResources.primaryWhiteColor,
            child: Column(
              children: [
                Padding(
                  padding:  EdgeInsets.symmetric(horizontal: 14.0.w,vertical: 12.h),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [

                      ///..............delivery address.............................
                      Text('Delivery Address', style: myStyleInter(14.sp, AppColorResources.subBlackColor, FontWeight.w700),),
                      SizedBox(height: 12.h,),
                      TextFormField(
                        controller: addressController,
                        maxLines: 4,
                        decoration: InputDecoration(
                          contentPadding: EdgeInsets.only(top: 12.h,left: 12.w),
                          hintText: 'Add your delivery address',
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(4.0),
                          ),
                        ),
                      ),
                      SizedBox(height: 10.h,),


                      ///..............contact information..........................
                      Text('Delivery Address', style: myStyleInter(14.sp, AppColorResources.subBlackColor, FontWeight.w700),),
                      SizedBox(height: 10.h,),

                      TextFormField(
                        controller: phoneController,
                        decoration: InputDecoration(
                          contentPadding: EdgeInsets.only(top: 12.h,left: 12.w),
                          hintText: '+8801752929714',
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(4.0),
                          ),
                        ),
                      ),

                    ],
                  ),
                ),
                DottedLine(
                  lineThickness: 3,
                  dashGapLength: 6,
                  dashColor: AppColorResources.primaryPinkColor,
                  dashRadius: 5,
                ),
                SizedBox(height: 10.h,)





              ],
            ),

          )


        ],
      ),

    );
  }
}
