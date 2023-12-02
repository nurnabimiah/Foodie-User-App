


import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:foodie_resturent_user_app/view/screen/order_screen/my_order_screen.dart';
import 'package:foodie_resturent_user_app/view/widget/button_widget/custom_button_widget.dart';
import 'package:get/get.dart';
import 'package:lottie/lottie.dart';
import '../../../utils/app_color_resources/app_color_resources.dart';
import '../../../utils/app_style.dart';

class OrderSuccessfulScreen extends StatelessWidget {
  static const String routeName = '/order_successful_route';
  const OrderSuccessfulScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColorResources.primaryColor.withOpacity(0.94),

      body: Column(
        children: [
          Lottie.asset('assets/lottie_files/order_completed.json'),
          Text('Your Order has been confirmed',style: myStyleInter(18.sp, AppColorResources.primaryBlack,FontWeight.w600),),
          Text('Your Order Id: #1152893',style: myStyleInter(18.sp, AppColorResources.primaryPinkColor,FontWeight.w800),),
          Spacer(),
          Padding(
            padding:  EdgeInsets.symmetric(horizontal: 14.w),
            child: CustomButtonWidget(
                onTap: (){
                  Get.toNamed(MyOrderScreen.routeName);
                },
                buttonText: 'See my order'
            ),
          ),
          SizedBox(height: 20.h,)

        ],
      ),



    );
  }
}
