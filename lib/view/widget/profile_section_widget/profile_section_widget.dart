


import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:foodie_resturent_user_app/view/screen/profile_screen/edit_profile_screen.dart';
import 'package:get/get.dart';
import '../../../utils/app_color_resources/app_color_resources.dart';
import '../../../utils/app_style.dart';

class ProfileSection extends StatelessWidget {
  const ProfileSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      //height: 200.h,
      width: double.infinity,
      decoration: BoxDecoration(color: AppColorResources.primaryBlack.withOpacity(0.3)),
      child: Padding(
        padding: const EdgeInsets.all(14.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.only(left: 12.0.w),
              child: Text('Profile',style: myStyleInter(20.sp, Colors.white,FontWeight.w800),),
            ),


            ///..................profile picture..................................
            SizedBox(height: 10.h,),
            Row(
              children: [
                Container(

                  height: 100.h,
                  width: 100.w,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      shape: BoxShape.circle
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Image.asset('assets/images/login_page_image.png', height: 270.0),
                  ),

                ),
                SizedBox(width: 10.w,),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Name: Foodie Flavour',style: myStyleInter(14.sp, Colors.white,FontWeight.w800),),
                    Text('Phone: 017525929714',style: myStyleInter(14.sp, Colors.white,FontWeight.w800),),
                    Text('Email: food@gmail.com',style: myStyleInter(14.sp, Colors.white,FontWeight.w800),),
                    SizedBox(height: 8.h,),

                    GestureDetector(
                      onTap: (){
                        Get.toNamed(EditProfileScreen.routeName);
                      },
                      child: Container(
                        height: 30.h,
                        decoration: BoxDecoration(
                            color: AppColorResources.primaryWhiteColor,
                            borderRadius: BorderRadius.all(Radius.circular(8.r))
                        ),
                        child:Center(child: Padding(
                          padding:  EdgeInsets.only(left: 8.0.w,right: 8.0.w),
                          child: Text('Edit Profile',style: myStyleInter(12.sp,AppColorResources.primaryBlack,FontWeight.w800),),
                        )),
                      ),
                    )

                  ],
                )
              ],
            ),

          ],
        ),
      ),


    );
  }
}