
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:foodie_resturent_user_app/utils/app_style.dart';

import '../../../utils/app_color_resources/app_color_resources.dart';
import '../../widget/profile_section_widget/profile_section_widget.dart';

class ProfileScreen extends StatelessWidget {
  static const String routeName = '/profile_route';
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:AppColorResources.primaryColor.withOpacity(0.93),
      body: Container(
      width: double.infinity,

        child: Column(
          children: [
            SizedBox(height: 30.h,),

            //.....................profile section..............................
            ProfileSection(),

            //................profile section all item .............................
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                  color: AppColorResources.primaryWhiteColor,),

                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: SingleChildScrollView(
                    child: Column(
                      children: [
                        GestureDetector(
                          onTap: (){},
                          child: Row(
                            children: [
                              Icon(Icons.add_business_rounded,color: AppColorResources.subBlackColor,size: 22.sp,),
                              SizedBox(width: 6.w,),
                              Text('Manage Address',style: myStyleInter(15.sp,  AppColorResources.subBlackColor,FontWeight.w500),),
                            ],
                          ),
                        ),
                        Divider(thickness: 0.3,),
                        SizedBox(height: 10.h,),

                        //...........order......................................
                        GestureDetector(
                          onTap: (){},
                          child: Row(
                            children: [
                              Icon(Icons.add_business_rounded,color: AppColorResources.subBlackColor,size: 22.sp,),
                              SizedBox(width: 6.w,),
                              Text('My Order',style: myStyleInter(14.sp,  AppColorResources.subBlackColor,FontWeight.w500),),
                            ],
                          ),
                        ),
                        Divider(thickness: 0.3,),
                        SizedBox(height: 10.h,),

                        //..........privacy policy................................
                        GestureDetector(
                          onTap: (){},
                          child: Row(
                            children: [
                              Icon(Icons.privacy_tip,color: AppColorResources.subBlackColor,size: 22.sp,),
                              SizedBox(width: 6.w,),
                              Text('Privacy Policy',style: myStyleInter(14.sp,  AppColorResources.subBlackColor,FontWeight.w500),),
                            ],
                          ),
                        ),
                        Divider(thickness: 0.3,),
                        SizedBox(height: 10.h,),


                        //.......termas and condition...............................
                        GestureDetector(
                          onTap: (){},
                          child: Row(
                            children: [
                              Icon(Icons.event_note,color: AppColorResources.subBlackColor,size: 22.sp,),
                              SizedBox(width: 6.w,),
                              Text('Terms && Condition',style: myStyleInter(14.sp,  AppColorResources.subBlackColor,FontWeight.w500),),
                            ],
                          ),
                        ),
                        Divider(thickness: 0.3,),
                        SizedBox(height: 10.h,),



                        //.......Contact us.......................................
                        GestureDetector(
                          onTap: (){},
                          child: Row(
                            children: [
                              Icon(Icons.call,color: AppColorResources.subBlackColor,size: 22.sp,),
                              SizedBox(width: 6.w,),
                              Text('Contact us',style: myStyleInter(14.sp,  AppColorResources.subBlackColor,FontWeight.w500),),
                            ],
                          ),
                        ),
                        Divider(thickness: 0.3,),
                        SizedBox(height: 10.h,),



                        //.......Contact us.......................................
                        GestureDetector(
                          onTap: (){},
                          child: Row(
                            children: [
                              Icon(Icons.pets_outlined,color: AppColorResources.subBlackColor,size: 22.sp,),
                              SizedBox(width: 6.w,),
                              Text('Aboutt us',style: myStyleInter(14.sp,  AppColorResources.subBlackColor,FontWeight.w500),),
                            ],
                          ),
                        ),
                        Divider(thickness: 0.3,),
                        SizedBox(height: 10.h,),



                        //.......Logout.......................................
                        GestureDetector(
                          onTap: (){},
                          child: Row(
                            children: [
                              Icon(Icons.logout,color: AppColorResources.subBlackColor,size: 22.sp,),
                              SizedBox(width: 6.w,),
                              Text('Logout',style: myStyleInter(14.sp,  AppColorResources.subBlackColor,FontWeight.w500),),
                            ],
                          ),
                        ),
                        Divider(thickness: 0.3,),
                        SizedBox(height: 10.h,),


                      ],
                    ),
                  ),
                ),

                ),

              ),

          ],
        ),


      ),
    );
  }
}


