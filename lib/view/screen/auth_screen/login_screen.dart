

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:foodie_resturent_user_app/controller/auth_controller.dart';

// class LoginScreen extends StatelessWidget {
//   static const String routeName = '/login_route';
//
//   const LoginScreen({Key? key}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: SafeArea(
//         child: Container(
//           width: double.infinity,
//           decoration: BoxDecoration(
//             gradient: LinearGradient(
//               colors: [Color(0xFFE9D6C4), Color(0xFFF5ECE3)],
//               begin: Alignment.topLeft,
//               end: Alignment.bottomRight,
//             )
//           ),
//
//           child: Stack(
//             children: [
//               Positioned(
//                    top: 20.h,
//                    right: -80.w,
//                   child: Image.asset('assets/images/login_page_image.png',height: 270.h,)),
//               Positioned(
//                   top: 330.h,
//                   right: -80.w,
//                   child: Image.asset('assets/images/login_page_image.png',height: 300.h,)),
//               Positioned(
//                   top: 730.h,
//                   right: -80.w,
//                   child: Image.asset('assets/images/login_page_image.png',height: 300.h,)),
//
//             ],
//           ),
//
//         ),
//       ),
//     );
//   }
// }
//
//



import 'package:foodie_resturent_user_app/utils/app_text_style/app_text_style.dart';
import 'package:foodie_resturent_user_app/view/widget/text_form_filed_widget/text_form_filed_widget.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

class LoginScreen extends StatelessWidget {
   static const String routeName = '/login_route';
   LoginScreen({Key? key}) : super(key: key);
   final authController = Get.find<AuthController>();


  @override
  Widget build(BuildContext context) {
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
                      CustomTextFormFiled(
                          hinText: 'Enter your number',
                          keyboardType: TextInputType.number,
                          textEditingController: authController.numberController,
                          textFormFiledValidator: (value){

                          },
                          ),
                      SizedBox(height: 12.h,),
                      CustomTextFormFiled(
                        hinText: 'Enter your password',
                        keyboardType: TextInputType.number,
                        textEditingController: authController.numberController,
                        textFormFiledValidator: (value){

                        },
                      ),
                    ],
                  ),
                )



                // Positioned(
                //   top: 300.h,
                //   child: Padding(
                //     padding:EdgeInsets.only(left: 15.0.w),
                //     child: Column(
                //       children: [
                //       Text('Foodie Flavour',style: textHeadline(24.sp, Colors.pinkAccent)),
                //       SizedBox(height: 18.h,) ,
                //       TextFormField(
                //         decoration: InputDecoration(
                //           labelText: 'Enter text',
                //           border: OutlineInputBorder(
                //             borderRadius: BorderRadius.circular(10.0), // Set the border radius
                //           ),
                //         ),
                //       )
                //
                //
                //
                //
                //       ],
                //     ),
                //   ),
                // )




              ],
            ),
          ),
        ),
      ),
    );
  }
}

