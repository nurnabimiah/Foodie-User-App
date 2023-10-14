

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:foodie_resturent_user_app/data/model/response_model/my_order.dart';
import 'package:foodie_resturent_user_app/utils/app_color_resources/app_color_resources.dart';
import 'package:foodie_resturent_user_app/utils/app_style.dart';
import 'package:get/get.dart';


class MyOrderScreen extends StatelessWidget {
  const MyOrderScreen({Key? key}) : super(key: key);
  static const String routeName = '/my_order_route';

  Color _getStatusColor(String status) {
    switch (status) {
      case 'Delivered':
        return Colors.pinkAccent;
      case 'Confirmed':
        return Colors.blueAccent;
      default:
        return Colors.orangeAccent;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(

        backgroundColor: Color(0xFFE9D6C4),
        title: Text('My Cart',style: myStyleInter(14.sp, AppColorResources.subBlackColor,FontWeight.w700),),
        centerTitle: true,

      ),
      body: Container(
        height: MediaQuery.of(context).size.height,
        color:AppColorResources.appBackgroundColor,
        child: ListView.separated(
            itemCount: orderList.length,
            separatorBuilder: (BuildContext context, int index) => SizedBox(height: 10.h,),
            itemBuilder: (BuildContext context,index){
              final order = orderList[index];

              return Container(
                decoration: BoxDecoration(
                  color: AppColorResources.primaryWhiteColor,
                ),
                child: Padding(
                  padding:  EdgeInsets.only(left: 12.0.w,right: 12.w,top: 12.h,bottom: 12.h),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text('Order Id',style: myStyleInter(14.sp, AppColorResources.subBlackColor,FontWeight.w500),),
                          Text(order.orderId,style: myStyleInter(14.sp, AppColorResources.subBlackColor,FontWeight.w800))
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text('Date',style: myStyleInter(14.sp, AppColorResources.subBlackColor,FontWeight.w500),),
                          Text(order.orderDate,style: myStyleInter(14.sp, AppColorResources.subBlackColor,FontWeight.w600),)
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text('Delivery Option',style: myStyleInter(14.sp, AppColorResources.subBlackColor,FontWeight.w500),),
                          Text(order.deliveryOption,style: myStyleInter(14.sp, AppColorResources.subBlackColor,FontWeight.w600),)
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text('Payable Amount',style: myStyleInter(14.sp, AppColorResources.subBlackColor,FontWeight.w500),),
                          Text(order.deliveryOption,style: myStyleInter(14.sp, AppColorResources.subBlackColor,FontWeight.w600),)
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text('Status',style: myStyleInter(14.sp, AppColorResources.subBlackColor,FontWeight.w500),),
                          Container(
                              decoration: BoxDecoration(
                                color: _getStatusColor(order.status),
                                borderRadius: BorderRadius.all(Radius.circular(10.0.r)),

                              ),

                              child: Padding(
                                padding:  EdgeInsets.only(left: 5.0.w,right: 5.w,top: 2.h,bottom: 2.h),
                                child: Text(order.status,style: myStyleInter(10.sp, AppColorResources.subBlackColor,FontWeight.w600),),
                              ))
                        ],
                      ),
                    ],
                  ),
                )

              );
            }
        )
      ),


    );
  }
}
