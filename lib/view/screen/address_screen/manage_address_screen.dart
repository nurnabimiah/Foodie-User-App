


import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../utils/app_color_resources/app_color_resources.dart';
import '../../../utils/app_style.dart';
import '../../widget/app_bar_widget/reusable_app_bar.dart';

class ManageAddressScreen extends StatelessWidget {
  static const String routeName = '/manage_address_route';
  ManageAddressScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColorResources.primaryColor.withOpacity(0.92),
      //backgroundColor: AppColorResources.primaryBlack,
      appBar: PreferredSize(
          preferredSize: Size.fromHeight(kToolbarHeight),
          child: ReusableAppBar(appBarTitle: 'Manage Address',)),


      body: Column(
        children: [

        SizedBox(height: 20.h,),
        Padding(
          padding: const EdgeInsets.all(14.0),
          child: Container(
          width: double.infinity,
          decoration: BoxDecoration(
            color: AppColorResources.primaryWhiteColor,
            border: Border.all(
              color: Colors.black, // Choose the border color
              width: 0.5, // Choose the border width
            ),
            borderRadius: BorderRadius.circular(6.0.r), // Optional: Add border radius
          ),
            child: Padding(
              padding:  EdgeInsets.symmetric(horizontal: 12.0.w,vertical: 12.h),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Icon(Icons.location_on_rounded,color: AppColorResources.subBlackColor,size: 26.sp,),
                          SizedBox(width: 10.w,),
                          Container(
                            height: 28.h,

                            decoration: BoxDecoration(
                                color: AppColorResources.subBlackColor,
                                borderRadius: BorderRadius.all(Radius.circular(10.r))
                            ),
                            child: Center(child: Padding(
                              padding:  EdgeInsets.symmetric(horizontal: 8.0),
                              child: Text('Home',style: myStyleInter(12.sp,  AppColorResources.primaryWhiteColor,FontWeight.w500),),
                            )),
                          )
                        ],
                      ),
                      Row(
                        children: [
                          IconButton(onPressed: (){}, icon: Icon(Icons.edit_note,color: AppColorResources.primaryPinkColor,size: 26.sp,),),
                          IconButton(onPressed: (){}, icon: Icon(Icons.delete_sharp,color: AppColorResources.primaryPinkColor,size: 24.sp,),)
                        ],
                      )

                    ],
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 14.0.w,top: 10.h),
                    child: Text('Road#12, House#32/6, Dhanmondi-32, Dhaka, Bangladesh',style: myStyleInter(14.sp,  AppColorResources.subBlackColor,FontWeight.w500),),
                  ),
                  SizedBox(height: 10.h,),
                ],
              ),
            ),
       ),
        )

      ],
      ),
    );
  }
}
