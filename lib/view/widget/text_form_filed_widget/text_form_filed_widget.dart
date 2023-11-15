


import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomTextFormFiled extends StatelessWidget {

  String hinText;
  TextInputType keyboardType;
  TextEditingController textEditingController;
  int? maxLine;
  String? initialValue;
  String? Function(String?) textFormFiledValidator;
  void Function(String)? onChanged;
  Widget? suffixIcon;
  Widget? prefixIcon;
  dynamic obsecureText;






  CustomTextFormFiled({
    Key? key,
    required this.hinText,
    required this.keyboardType,
    required this.textEditingController,
    required this.textFormFiledValidator,
    this.initialValue,
    this.maxLine,
    this.onChanged,
    this.suffixIcon,
    this.prefixIcon,
    this.obsecureText = false,

  }) : super(key: key);





  @override
  Widget build(BuildContext context) {

    return TextFormField(
        initialValue: initialValue,
        obscureText:obsecureText ,
        controller: textEditingController,
        textInputAction: TextInputAction.next,
        keyboardType: keyboardType,
        validator: textFormFiledValidator,
        onChanged: onChanged,

        decoration: InputDecoration(
            contentPadding: EdgeInsets.all(12),

            ///........................enable border..............................
            enabledBorder: OutlineInputBorder(
              borderSide:BorderSide(color: Colors.white,width: 2.w,),
              borderRadius: BorderRadius.circular(8.r),
            ),

            ///........................outLineInputBorder.........................
            errorBorder: OutlineInputBorder(
              borderSide:BorderSide(color: Colors.white, width: 2.w,),
              borderRadius: BorderRadius.circular(8.r),
            ),


            ///........................error style................................
            errorStyle: TextStyle(fontSize: 14.sp,fontWeight: FontWeight.w500,color: Colors.red),

            ///........................focuseBorder...............................
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(8.r),
              borderSide: BorderSide(color: Colors.white,width: 2.w),
            ),


            border:OutlineInputBorder(
              borderSide:BorderSide(color:Colors.white,width: 2.w,),
              borderRadius: BorderRadius.circular(8.r),),
            // InputBorder.none,
            //fillColor: Color(0xffE0E0E0),
            fillColor: Colors.white,

            filled: true,
            hintText: hinText,
            hintStyle: TextStyle(color: Color(0xff334257),fontSize: 14.sp,fontWeight: FontWeight.w400),


           //.........suffixIcon.............
          suffixIcon: suffixIcon,

          //.........prefixIcon.............
          prefixIcon: prefixIcon


        ));





  }
}