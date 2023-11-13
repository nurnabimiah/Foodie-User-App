


import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:foodie_resturent_user_app/utils/app_const_file.dart';

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


      body: SingleChildScrollView(
        child: Container(
          color: AppColorResources.primaryColor.withOpacity(0.67),
          width: double.infinity,
          //height: MediaQuery.of(context).size.height,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 10.h,),
              Padding(
                padding:  EdgeInsets.only(left: 12.0.w,top: 10.h),
                child: Text('Today', style: myStyleInter(14.sp, AppColorResources.primaryBlack, FontWeight.w700)),
              ),

              Container(

                color: AppColorResources.primaryWhiteColor,

                child: ListView.separated(
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  itemCount: 3,
                  separatorBuilder: (BuildContext, index) => Divider(),
                  itemBuilder: (BuildContext, index) {
                    return ListTile(
                      leading: Stack(
                        children: [
                          Image.network(
                            'https://nutritionaustralia.org/app/uploads/2021/08/shutterstock_623425481.jpg',
                            height: 70.h,
                            width: 70.w,
                          ),

                          Positioned(
                            left: 0.w,
                            top: 0.h,
                            child: Container(
                              height: 8.h,
                              width: 8.w,
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: AppColorResources.primaryPinkColor,
                              ),
                            ),
                          ),

                        ],
                      ),

                      title: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(AppConstFile.notificationTitle,style:myStyleInter(14.sp, AppColorResources.subBlackColor,FontWeight.w600),),
                          Text(AppConstFile.notificationSubtitle,
                              style:TextStyle(fontSize: 12.sp,color:AppColorResources.subBlackColor,fontWeight:FontWeight.w400 ),textAlign: TextAlign.justify,),
                        ],
                      ),
                      // title: Text(AppConstFile.notificationTitle,style:myStyleInter(14.sp, AppColorResources.subBlackColor,FontWeight.w600),),
                      // subtitle: Text(AppConstFile.notificationSubtitle,style:TextStyle(fontSize: 12.sp,color:AppColorResources.subBlackColor,fontWeight:FontWeight.w400 )),
                    );
                  },
                ),


              ),


            ///...............this week.........................................

              Padding(
                padding:  EdgeInsets.only(left: 12.0.w,top: 10.h),
                child: Text('This Week', style: myStyleInter(14.sp, AppColorResources.primaryBlack, FontWeight.w700)),
              ),
              SizedBox(height: 10.h,),
              Container(
                color: AppColorResources.primaryWhiteColor,
                child: ListView.separated(
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  itemCount: 4,
                  separatorBuilder: (BuildContext, index) => Divider(),
                  itemBuilder: (BuildContext, index) {
                    return ListTile(
                      leading: Image.network('https://nutritionaustralia.org/app/uploads/2021/08/shutterstock_623425481.jpg', height: 70.h, width: 70.w,),
                      title: Text(AppConstFile.notificationTitle,),
                      subtitle: Text(AppConstFile.notificationSubtitle,),
                    );
                  },
                ),
              ),


              ///...............this month.......................................

              Padding(
                padding:  EdgeInsets.only(left: 12.0.w,top: 10.h),
                child: Text('This month', style: myStyleInter(14.sp, AppColorResources.primaryBlack, FontWeight.w700)),
              ),
              SizedBox(height: 10.h,),
              Container(
                color: AppColorResources.primaryWhiteColor,
                child: ListView.separated(
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  itemCount: 2,
                  separatorBuilder: (BuildContext, index) => Divider(),
                  itemBuilder: (BuildContext, index) {
                    return ListTile(
                      leading: Image.network('https://nutritionaustralia.org/app/uploads/2021/08/shutterstock_623425481.jpg', height: 70.h, width: 70.w,),
                      title: Text(AppConstFile.notificationTitle,),
                      subtitle: Text(AppConstFile.notificationSubtitle,),
                    );
                  },
                ),
              )
            ],
          ),
        ),
      ),




    );
  }
}
