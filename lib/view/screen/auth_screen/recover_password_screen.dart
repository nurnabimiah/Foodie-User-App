

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:foodie_resturent_user_app/view/screen/auth_screen/create_new_password_screen.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

import '../../../controller/auth_controller.dart';
import '../../../utils/app_color_resources/app_color_resources.dart';
import '../../../utils/app_style.dart';
import '../../../utils/app_text_style/app_text_style.dart';
import '../../widget/button_widget/custom_button_widget.dart';
import '../../widget/text_form_filed_widget/text_form_filed_widget.dart';

class RecoverPasswordScreen extends StatelessWidget {

   static const String routeName = '/recover_password_route';

   RecoverPasswordScreen({Key? key}) : super(key: key);
   final TextEditingController _otpTEController = TextEditingController();
   final _authController = Get.find<AuthController>();

  @override
  Widget build(BuildContext context) {
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
              Text('Enter your phone number to recover password ',style:myStyleInter(12.sp, AppColorResources.subBlackColor,FontWeight.w600)),
              SizedBox(height: 18.h,),

              CustomTextFormFiled(
                hinText: 'Enter your number',
                keyboardType: TextInputType.number,
                textEditingController: _authController.numberController,
                textFormFiledValidator: (value){

                },
              ),

              SizedBox(height: 15.h,),

              CustomButtonWidget(
                  onTap: (){
                   Get.toNamed(CreateNewPasswordScreen.routeName);
                  },
                  buttonText: 'Send'),

            ],
          ),
        ),
      ),


    );
  }
}
