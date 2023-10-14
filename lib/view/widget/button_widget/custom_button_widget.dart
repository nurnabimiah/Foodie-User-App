

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../utils/app_style.dart';

class CustomButtonWidget extends StatelessWidget {

  void Function() onTap;
  String buttonText;
  CustomButtonWidget({Key? key,required this.onTap,required this.buttonText}) : super(key: key);



  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: 42.h,
        width: double.infinity,
        decoration: BoxDecoration(
            color: Colors.pinkAccent.shade200,
            borderRadius: BorderRadius.all(Radius.circular(12.r))
        ),
        child: Center(child: Text(buttonText,style: myStyleInter(14.sp, Colors.white,FontWeight.w700),)),

      ),
    );
  }
}
