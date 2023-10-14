


import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:foodie_resturent_user_app/utils/app_color_resources/app_color_resources.dart';
import 'package:foodie_resturent_user_app/utils/app_style.dart';
import 'package:foodie_resturent_user_app/utils/app_text_style/app_text_style.dart';
import 'package:foodie_resturent_user_app/view/screen/auth_screen/recover_password_screen.dart';
import 'package:foodie_resturent_user_app/view/widget/button_widget/custom_button_widget.dart';
import 'package:get/get.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

class ForgetPassWordScreen extends StatelessWidget {
  static const String routeName = '/forget_password_route';
  ForgetPassWordScreen({Key? key}) : super(key: key);
  final TextEditingController _otpTEController = TextEditingController();

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
          padding: const EdgeInsets.all(12.0),
          child: Column(
            children: [
              SizedBox(height: 200.h,),

              Image.asset('assets/images/password_key.png',height: 100.h,),
              SizedBox(height: 16.h,),
              Text('Enter OTP',style:textHeadline(20.sp, AppColorResources.primaryBlack)),
              Text('A 4 digit code sent to your number ',style:myStyleInter(14.sp, AppColorResources.subBlackColor,FontWeight.w600)),
              SizedBox(height: 18.h,),

              PinCodeTextField(
                length: 5,
                obscureText: false,
                controller: _otpTEController,
                animationType: AnimationType.fade,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                pinTheme: PinTheme(
                  shape: PinCodeFieldShape.box,
                  borderRadius: BorderRadius.circular(8),
                  fieldHeight: 50,
                  fieldWidth: 40,
                  activeFillColor: Colors.white,
                  inactiveFillColor: Colors.white,
                  selectedFillColor: Colors.white,
                  selectedColor: Colors.pinkAccent,
                ),
                animationDuration: const Duration(milliseconds: 300),
                backgroundColor: Colors.transparent,
                enableActiveFill: true,
                onCompleted: (v) {},
                onChanged: (value) {},
                beforeTextPaste: (text) {
                  return true;
                },
                appContext: context,
              ),

              // text button....resend code.....................................
              Padding(
                padding:  EdgeInsets.symmetric(horizontal: 23.0.w),
                child: Row(
                  children: [
                    Text('Otp will send within 30s ',style:myStyleInter(14.sp, AppColorResources.subBlackColor,FontWeight.w600)),
                    Spacer(),
                    GestureDetector(
                        onTap: (){
                           print('Go to recover password screen');
                            Navigator.push(context, MaterialPageRoute(builder: (context)=>RecoverPasswordScreen()));
                        },
                        child: Text('Resend code ',style:myStyleInter(14.sp,Colors.pinkAccent,FontWeight.w600))),
                  ],
                ),
              ),

              SizedBox(height: 15.h,),

              Padding(
                padding:  EdgeInsets.symmetric(horizontal: 23.0.w),
                child: CustomButtonWidget(
                    onTap: (){},
                    buttonText: 'Verify Otp'),
              ),

            ],
          ),
        ),
      ),
      

    );
  }
}
