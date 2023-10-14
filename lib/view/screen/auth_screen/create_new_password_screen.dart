

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:foodie_resturent_user_app/controller/auth_controller.dart';
import 'package:foodie_resturent_user_app/view/screen/auth_screen/recover_password_screen.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../../../utils/app_color_resources/app_color_resources.dart';
import '../../../utils/app_style.dart';
import '../../../utils/app_text_style/app_text_style.dart';
import '../../widget/button_widget/custom_button_widget.dart';
import '../../widget/text_form_filed_widget/text_form_filed_widget.dart';

class CreateNewPasswordScreen extends StatelessWidget {

  static const String routeName ='/crate_newpasssword_route';

  CreateNewPasswordScreen({Key? key}) : super(key: key);
  final recoverPassController = Get.find<AuthController>();

  @override
  Widget build(BuildContext context) {
    return GetBuilder<AuthController>(
      builder: (recoverPasswordController) {
        return Scaffold(
          body: Container(
            width: double.infinity,
            height: MediaQuery.of(context).size.height,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [Color(0xFFE9D6C4), Color(0xFFF5ECE3)],
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
              ),
            ),

            child: Padding(
              padding:  EdgeInsets.symmetric(horizontal:20),
              child: Column(
                children: [
                  SizedBox(height: 200.h,),

                  Image.asset('assets/images/password_key.png',height: 100.h,),
                  SizedBox(height: 16.h,),
                  Text('Recover Password',style:textHeadline(20.sp, AppColorResources.primaryBlack)),
                  Text('Create your next password access to login ',style:myStyleInter(12.sp, AppColorResources.subBlackColor,FontWeight.w600)),
                  SizedBox(height: 18.h,),


                  //........password textform filed.....................
                  CustomTextFormFiled(
                    hinText: 'Enter your password',
                    obsecureText: !recoverPassController.isLoginPasswordVisible.value,
                    keyboardType: TextInputType.number,
                    textEditingController: recoverPassController.passwordController,
                    suffixIcon: GestureDetector(
                      onTap: () {
                        recoverPassController.loginPasswordVisibility();
                      },
                      child: Icon(
                        recoverPassController.isLoginPasswordVisible.value
                            ? Icons.visibility
                            : Icons.visibility_off,
                      ),
                    ),
                    textFormFiledValidator: (value){

                    },

                  ),

                  SizedBox(height: 10.h,),

                  //........confirm password textform filed.....................
                  CustomTextFormFiled(
                    hinText: 'Enter Confirm your password',
                    obsecureText: !recoverPassController.isLoginPasswordVisible.value,
                    keyboardType: TextInputType.number,
                    textEditingController: recoverPassController.passwordController,
                    suffixIcon: GestureDetector(
                      onTap: () {
                        recoverPassController.loginPasswordVisibility();
                      },
                      child: Icon(
                        recoverPassController.isLoginPasswordVisible.value
                            ? Icons.visibility
                            : Icons.visibility_off,
                      ),
                    ),
                    textFormFiledValidator: (value){

                    },

                  ),



                  SizedBox(height: 15.h,),

                  CustomButtonWidget(
                      onTap: (){
                        Get.to(RecoverPasswordScreen.routeName);
                      },
                      buttonText: 'Send'),

                ],
              ),
            ),
          ),


        );
      }
    );
  }
}
