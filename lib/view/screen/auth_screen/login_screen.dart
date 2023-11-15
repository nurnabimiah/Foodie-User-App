

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:foodie_resturent_user_app/controller/auth_controller.dart';
import 'package:foodie_resturent_user_app/utils/app_color_resources/app_color_resources.dart';
import 'package:foodie_resturent_user_app/utils/app_style.dart';
import 'package:foodie_resturent_user_app/utils/app_text_style/app_text_style.dart';
import 'package:foodie_resturent_user_app/view/screen/auth_screen/sign_up_screen.dart';
import 'package:foodie_resturent_user_app/view/screen/bottom_navbar_screen/bottom_navbar_screen.dart';
import 'package:foodie_resturent_user_app/view/screen/home_screen/home_screen.dart';
import 'package:foodie_resturent_user_app/view/screen/order_screen/my_order_screen.dart';
import 'package:foodie_resturent_user_app/view/screen/order_screen/order_details_screen.dart';
import 'package:foodie_resturent_user_app/view/widget/text_form_filed_widget/text_form_filed_widget.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import 'forget_password_screen.dart';


class LoginScreen extends StatelessWidget {
   static const String routeName = '/login_route';
   LoginScreen({Key? key}) : super(key: key);

   final authController = Get.find<AuthController>();


  @override
  Widget build(BuildContext context) {
    return GetBuilder<AuthController>(
      builder: (logincontroller) {
        return Scaffold(
          body: SafeArea(
            child: SingleChildScrollView(
              child: Container(
                width: double.infinity,
                height: MediaQuery.of(context).size.height,
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: [Color(0xFFE9D6C4), Color(0xFFF5ECE3)],
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                  ),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Expanded(child: Image.asset('assets/images/login_leaf.png', height: 270.0)),
                        Expanded(child: Image.asset('assets/images/login_page_image.png', height: 270.0)),

                      ],
                    ),

                    Padding(
                      padding:EdgeInsets.only(left: 12.0.w,right: 12.w),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [

                          Text('Foodie Flavour',style: textHeadline(24.sp, Colors.pinkAccent)),
                          SizedBox(height: 16.h,),
                          CustomTextFormFiled(
                              hinText: 'Enter your number',
                              keyboardType: TextInputType.number,
                              textEditingController: logincontroller.numberController,
                              textFormFiledValidator: (value){

                              },
                              ),
                          SizedBox(height: 12.h,),


                          //........password textform filed.....................
                          CustomTextFormFiled(
                            hinText: 'Enter your password',
                            obsecureText: !logincontroller.isLoginPasswordVisible.value,
                            keyboardType: TextInputType.number,
                            textEditingController: logincontroller.passwordController,
                            suffixIcon: GestureDetector(
                              onTap: () {
                                logincontroller.loginPasswordVisibility();
                              },
                              child: Icon(
                                logincontroller.isLoginPasswordVisible.value
                                    ? Icons.visibility
                                    : Icons.visibility_off,
                              ),
                            ),
                            textFormFiledValidator: (value){

                            },

                          ),

                          //........forget password text........................

                          Align(
                            alignment: Alignment.centerRight,
                            child: TextButton(onPressed: (){
                             Get.to(ForgetPassWordScreen());
                            },
                                child: Text('Forget Password?',style: myStyleInter(12.sp, Colors.black87,FontWeight.w600,),)),
                          ),
                          SizedBox(height: 10.h,),






                          //...........sign in button...........................
                          GestureDetector(
                            onTap: (){
                              Get.toNamed(BottomNavBar.routeName);
                            },
                            child: Container(
                              height: 44.h,
                              width: double.infinity,
                              decoration: BoxDecoration(
                                  color: Colors.pinkAccent.shade200,
                                   borderRadius: BorderRadius.all(Radius.circular(12.r))
                              ),
                              child: Center(child: Text('Sign In',style: myStyleInter(16.sp, Colors.white,FontWeight.w700),)),

                            ),
                          ),

                          SizedBox(height: 18.h,),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text("Don't Have an account?", style: myStyleInter(14.sp, Colors.black87),),
                              GestureDetector(
                                  onTap: (){
                                    Get.toNamed(SignUpScreen.routeName);
                                  },
                                  child: Text('Sign Up',style: myStyleInter(14.sp, Colors.pinkAccent,FontWeight.w700),))

                            ],
                          )




                        ],
                      ),
                    ),













                  ],
                ),
              ),
            ),
          ),
        );
      }
    );
  }
}

