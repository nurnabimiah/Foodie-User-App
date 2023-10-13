


import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:foodie_resturent_user_app/view/screen/auth_screen/login_screen.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/src/simple/get_state.dart';

import '../../../controller/auth_controller.dart';
import '../../../utils/app_style.dart';
import '../../../utils/app_text_style/app_text_style.dart';
import '../../widget/text_form_filed_widget/text_form_filed_widget.dart';

class SignUpScreen extends StatelessWidget {
  static const String routeName = '/sign_up_route';
  const SignUpScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<AuthController>(
        builder: (logincontroller) {
          return Scaffold(
            body: SafeArea(
              child: SingleChildScrollView(
                child: Container(
                  width: double.infinity,
                  height: MediaQuery.of(context).size.height, // Set the height explicitly
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

                            //.............enter your name.............
                            CustomTextFormFiled(
                              hinText: 'Enter your name',
                              keyboardType: TextInputType.number,
                              textEditingController: logincontroller.numberController,
                              textFormFiledValidator: (value){

                              },
                            ),
                            SizedBox(height: 12.h,),

                            //.............enter your name.............
                            CustomTextFormFiled(
                              hinText: 'Enter your number',
                              keyboardType: TextInputType.number,
                              textEditingController: logincontroller.numberController,
                              textFormFiledValidator: (value){

                              },
                            ),
                            SizedBox(height: 12.h,),


                            //.............enter your number.............
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
                            SizedBox(height: 12.h,),


                            //.....confirm password..........
                            CustomTextFormFiled(
                              hinText: 'Confirm password',
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
                            SizedBox(height: 12.h,),
                            SizedBox(height: 18.h,),

                            //...........sign up button
                            Container(
                              height: 44.h,
                              width: double.infinity,
                              decoration: BoxDecoration(
                                  color: Colors.pinkAccent.shade200,
                                  borderRadius: BorderRadius.all(Radius.circular(12.r))
                              ),
                              child: Center(child: Text('Sign Up',style: myStyleInter(16.sp, Colors.white,FontWeight.w700),)),

                            ),
                            SizedBox(height: 18.h,),

                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text('Already Have an account ? ',style: myStyleInter(14.sp, Colors.black87),),
                                GestureDetector(
                                  onTap: (){
                                    Get.toNamed(LoginScreen.routeName);
                                  },
                                  child: Text('Login',style: myStyleInter(14.sp, Colors.pinkAccent,FontWeight.w700),))

                              ],
                            )




                          ],
                        ),
                      )








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
