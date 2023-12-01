



import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:foodie_resturent_user_app/utils/app_color_resources/app_color_resources.dart';

import '../../../utils/app_style.dart';

class PaymentContainer extends StatefulWidget {
  @override
  _PaymentContainerState createState() => _PaymentContainerState();
}

class _PaymentContainerState extends State<PaymentContainer> {
  String paymentMethod = 'Cash';

  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppColorResources.primaryWhiteColor,
      padding: EdgeInsets.all(12.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          SingleChildScrollView(
            child: Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Select Payment Method', style: myStyleInter(14.sp, AppColorResources.subBlackColor, FontWeight.w700),),

                  Row(
                    children: [
                      Radio(
                        value: 'Cash',
                        groupValue: paymentMethod,
                        activeColor:AppColorResources.primaryPinkColor,
                        onChanged: (value) {
                          setState(() {
                            paymentMethod = value as String;
                          });
                        },
                      ),
                      Text('Cash', style: myStyleInter(14.sp, AppColorResources.subBlackColor, FontWeight.w700)),
                    ],
                  ),


                  Row(
                    children: [
                      Radio(
                        value: 'Credit Card',
                        groupValue: paymentMethod,
                        activeColor:AppColorResources.primaryPinkColor,
                        onChanged: (value) {
                          setState(() {
                            paymentMethod = value as String;
                          });
                        },
                      ),
                      Text('Credit Card', style: myStyleInter(14.sp, AppColorResources.subBlackColor, FontWeight.w700),),
                    ],
                  ),

                ],
              ),
            ),
          ),

        ],
      ),
    );
  }
}