


import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:foodie_resturent_user_app/view/screen/order_screen/order_successful_screen.dart';
import 'package:foodie_resturent_user_app/view/widget/dash_line_widget/dash_line_widget.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import '../../../utils/app_color_resources/app_color_resources.dart';
import '../../../utils/app_style.dart';
import '../../widget/button_widget/custom_button_widget.dart';
import '../../widget/payment_widget/payment_widget.dart';

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
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  SizedBox(height: 10.h,),
                  Container(
                    color: AppColorResources.primaryWhiteColor,
                    child: Column(
                      children: [
                        //.............delivery address and contact number...............
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
                              Text('Contact Number', style: myStyleInter(14.sp, AppColorResources.subBlackColor, FontWeight.w700),),
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


                        ///............dotted line......................................
                        MyDashLineWidget(color: AppColorResources.primaryPinkColor,),

                        SizedBox(height: 12.h,),












                      ],
                    ),

                  ),
                  SizedBox(height: 10.h,),

                  Padding(
                    padding: EdgeInsets.only(top: 10.h),
                    child: Container(
                      width: double.infinity,
                      color: AppColorResources.primaryWhiteColor,
                      child: ExpansionTile(

                        title: Text('View Order Details', style: myStyleInter(14.sp, AppColorResources.subBlackColor, FontWeight.w700),),
                        children: [
                          Container(
                              decoration: BoxDecoration(
                                color: AppColorResources.primaryWhiteColor,),

                              child: Padding(
                                padding:  EdgeInsets.only(left: 12.0.w,right: 12.w,bottom: 12.h),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [

                                    ///.............................sub total........................
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text('Sub total',style: myStyleInter(14.sp, AppColorResources.subBlackColor,FontWeight.w500),),
                                        Text('\$ 10.20',style: myStyleInter(14.sp, AppColorResources.subBlackColor,FontWeight.w500))
                                      ],
                                    ),

                                    ///.............................vat.....................
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text('0% VAT',style: myStyleInter(14.sp, AppColorResources.subBlackColor,FontWeight.w500),),
                                        Text('\$ 0.00',style: myStyleInter(14.sp, AppColorResources.subBlackColor,FontWeight.w500),)
                                      ],
                                    ),



                                    ///.............................delivery cost.................
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text('Delivery Cost',style: myStyleInter(14.sp, AppColorResources.subBlackColor,FontWeight.w500),),
                                        Text('\$ 0.50',style: myStyleInter(14.sp, AppColorResources.subBlackColor,FontWeight.w500),)
                                      ],
                                    ),



                                    ///.............................Discount..................
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text('Discount',style: myStyleInter(14.sp, AppColorResources.subBlackColor,FontWeight.w500),),
                                        Text('-\$70.0',style: myStyleInter(14.sp, AppColorResources.subBlackColor,FontWeight.w500),)
                                      ],
                                    ),

                                    Divider(color: AppColorResources.primaryBlack,thickness: 0.3),

                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text('Total',style: myStyleInter(14.sp, AppColorResources.primaryBlack,FontWeight.w600),),
                                        Text('-\$70.0',style: myStyleInter(14.sp, AppColorResources.primaryBlack,FontWeight.w600),)
                                      ],
                                    ),











                                  ],
                                ),
                              )

                          ),
                        ],
                      ),
                    ),
                  ),

                  SizedBox(height: 10.h,),
                  PaymentContainer()












                ],
              ),
            ),
          ),
          SizedBox(height: 10.h,),


          //.............total payable container................................
          Container(
            height: 100.h, // Adjust the height as needed
            color: AppColorResources.primaryWhiteColor,
            child: Padding(
                padding:  EdgeInsets.symmetric(horizontal: 16.0.w, vertical: 10.0.h),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('Total Payable',style: myStyleInter(15.sp, AppColorResources.primaryBlack,FontWeight.w600),),
                        Text('\$10.00',style: myStyleInter(15.sp, AppColorResources.primaryPinkColor,FontWeight.w600),),
                      ],
                    ),

                    SizedBox(height: 10.h,),

                    CustomButtonWidget(
                        onTap: (){
                          Get.toNamed(OrderSuccessfulScreen.routeName);
                        },
                        buttonText: 'Confirm Order'
                    )
                  ],
                )
            ),
          ),

        ],
      ),

    );
  }
}
