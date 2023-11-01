

import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:foodie_resturent_user_app/data/model/response_model/my_order.dart';
import 'package:foodie_resturent_user_app/utils/app_color_resources/app_color_resources.dart';
import 'package:foodie_resturent_user_app/view/screen/order_screen/my_order_screen.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import '../../../utils/app_style.dart';
import '../../widget/app_bar_widget/reusable_app_bar.dart';


class OrderDetailsScreen extends StatelessWidget {
  static const String routeName = '/order_details_route';
   OrderDetailsScreen({Key? key, this.order}) : super(key: key);

 final OrderModel? order;


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
            ),

            SizedBox(height: 12.h,),


            ///...........................delivery address........................
            Container(
              color: AppColorResources.primaryWhiteColor,
              width: double.infinity,
              child: Padding(
                padding:  EdgeInsets.all(12.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Delivery Address', style: myStyleInter(12.sp, AppColorResources.subBlackColor, FontWeight.w700,)),
                    SizedBox(height: 12.h,),
                    Row(
                      children: [
                       Column(
                         children: [
                           Image.asset('assets/icons/map_icon.png',height: 20.h,width: 18.w,),
                           Text('Home',style: myStyleInter(12.sp, AppColorResources.subBlackColor, FontWeight.w700,))

                         ],
                       ),
                       SizedBox(width: 30.w,),
                       Expanded(
                         child: Column(
                           crossAxisAlignment: CrossAxisAlignment.start,
                           children: [
                             Text('Nayon',style: myStyleInter(13.sp, AppColorResources.subBlackColor, FontWeight.w500,)),
                             Text('+8801752929714',style: myStyleInter(13.sp, AppColorResources.subBlackColor, FontWeight.w500,)),
                             Text('Sukhrabad,Dhanmondi-32,Dhaka',style: myStyleInter(13.sp, AppColorResources.subBlackColor, FontWeight.w500,)),
                           ],
                         ),
                       )
                      ],
                    )


                  ],
                ),
              ),
            ),
            SizedBox(height: 12.h,),

            Container(
             decoration: BoxDecoration(
                color: AppColorResources.primaryWhiteColor,),

            child: Padding(
            padding:  EdgeInsets.only(left: 12.0.w,right: 12.w,top: 12.h,bottom: 12.h),
            child: Column(
              children: [

                ///.............................order id........................
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Order Id',style: myStyleInter(14.sp, AppColorResources.subBlackColor,FontWeight.w500),),
                    Text('#123456',style: myStyleInter(14.sp, AppColorResources.subBlackColor,FontWeight.w800))
                  ],
                ),

                ///.............................order date......................
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Date',style: myStyleInter(14.sp, AppColorResources.subBlackColor,FontWeight.w500),),
                    Text('10 jan 2023',style: myStyleInter(14.sp, AppColorResources.subBlackColor,FontWeight.w600),)
                  ],
                ),



                ///.............................delivery option.................
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Delivery Option',style: myStyleInter(14.sp, AppColorResources.subBlackColor,FontWeight.w500),),
                    Text('Physical',style: myStyleInter(14.sp, AppColorResources.subBlackColor,FontWeight.w600),)
                  ],
                ),



                ///.............................Payable amoubt..................
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Payable Amount',style: myStyleInter(14.sp, AppColorResources.subBlackColor,FontWeight.w500),),
                    Text('\$33.0',style: myStyleInter(14.sp, AppColorResources.subBlackColor,FontWeight.w600),)
                  ],
                ),


                //........sub total.............................................
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Sub total',style: myStyleInter(14.sp, AppColorResources.subBlackColor,FontWeight.w500),),
                    Text('\$83.00',style: myStyleInter(14.sp, AppColorResources.subBlackColor,FontWeight.w600),)
                  ],
                ),


                //........Delivery Charge.......................................
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Delivrey Charge',style: myStyleInter(14.sp, AppColorResources.subBlackColor,FontWeight.w500),),
                    Text('0.00',style: myStyleInter(14.sp, AppColorResources.subBlackColor,FontWeight.w600),)
                  ],
                ),


                //........Discount..............................................
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Delivrey Charge',style: myStyleInter(14.sp, AppColorResources.subBlackColor,FontWeight.w500),),
                    Text('0.00',style: myStyleInter(14.sp, AppColorResources.PrimaryRed,FontWeight.w600),)
                  ],
                ),

                Divider(color: AppColorResources.subBlackColor,thickness: 0.3),


                //........total.................................................
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Delivrey Charge',style: myStyleInter(14.sp, AppColorResources.subBlackColor,FontWeight.w500),),
                    Text('\$200.00',style: myStyleInter(14.sp, AppColorResources.subBlackColor,FontWeight.w600),)
                  ],
                ),









              ],
            ),
          )

      ),
            SizedBox(height: 20.h,),

            Padding(
              padding: const EdgeInsets.all(12.0),
              child: GestureDetector(
                onTap: (){
                  Get.toNamed(MyOrderScreen.routeName);
                },
                child: Container(
                  height: 44.h,
                  width: double.infinity,
                  decoration: BoxDecoration(
                      color: Colors.pinkAccent.shade200,
                      borderRadius: BorderRadius.all(Radius.circular(8.r))
                  ),
                  child: Center(child: Text('Cancel Order',style: myStyleInter(14.sp, Colors.white,FontWeight.w700),)),

                ),
              ),
            ),




          ],
        ),
      ),
    );
  }
}
