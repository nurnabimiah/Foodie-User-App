


import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:foodie_resturent_user_app/view/widget/custom_drop_down_button/custom_drop_down_button.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import '../../../utils/app_color_resources/app_color_resources.dart';
import '../../../utils/app_style.dart';
import '../../widget/app_bar_widget/reusable_app_bar.dart';
import '../../widget/text_form_filed_widget/text_form_filed_widget.dart';
import '../order_screen/order_details_screen.dart';


class EditProfileScreen extends StatefulWidget {
  static const String routeName = '/editProfile_route';
  EditProfileScreen({Key? key}) : super(key: key);

  @override
  State<EditProfileScreen> createState() => _EditProfileScreenState();
}

class _EditProfileScreenState extends State<EditProfileScreen> {
  final _formKey = GlobalKey<FormState>();

  final nameController = TextEditingController();
  List<String> dropdownItems = ['Male', 'Female', 'Other'];

  String? selectedGender ;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColorResources.primaryColor.withOpacity(0.92),
      //backgroundColor: AppColorResources.primaryBlack,
      appBar: PreferredSize(
          preferredSize: Size.fromHeight(kToolbarHeight),
          child: ReusableAppBar(appBarTitle: 'Order Details',)),


      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [

              Stack(
                children: [

                  Container(

                    height: 100.h,
                    width: 100.w,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        shape: BoxShape.circle
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Image.asset('assets/images/login_page_image.png', height: 270.0),
                    ),

                  ),

                  Positioned(
                    top: 70.h,
                    right: 0,
                    child: Container(
                      height: 30.h,
                      width: 30.w,
                      decoration: BoxDecoration(
                        color: AppColorResources.primaryPinkColor.withOpacity(0.99),
                          shape: BoxShape.circle
                      ),
                      child: IconButton(onPressed: () {  }, icon: Icon(Icons.camera_alt_outlined,size: 16.sp,color: AppColorResources.primaryWhiteColor,),)



                    ),
                  ),

                ],
              ),
              SizedBox(height: 20.h,),

              //......................name......................................
              CustomTextFormFiled(
                hinText: 'Nayon',
                keyboardType: TextInputType.name,
                textEditingController: nameController,
                textFormFiledValidator: (value ) {  },),
              SizedBox(height: 10.h,),

              // DropdownButton2 for gender selection
              CustomDropdownButton2(
                  value: selectedGender,
                  hint: 'Select Gender',
                  isExpanded: true,
                  items: dropdownItems,
                  onChanged: (value){
                    if(value !=null){
                      setState(() {
                        selectedGender = value;
                      });
                    }
                  }
              ),
              SizedBox(height: 10.h,),


              //......................Email address......................................
              CustomTextFormFiled(
                hinText: 'Email Address',
                keyboardType: TextInputType.emailAddress,
                textEditingController: nameController,
                textFormFiledValidator: (value ) {  },),

              SizedBox(height: 10.h,),





              //.....................Phone Number......................................
              CustomTextFormFiled(
                hinText: '01752929714',
                keyboardType: TextInputType.emailAddress,
                textEditingController: nameController,
                textFormFiledValidator: (value ) {  },),

              SizedBox(height: 40.h,),




              //.....................update profile button.......................

              GestureDetector(
                onTap: (){
                  Get.toNamed(OrderDetailsScreen.routeName);
                },
                child: Container(
                  height: 44.h,
                  width: double.infinity,
                  decoration: BoxDecoration(
                      color: Colors.pinkAccent.shade200,
                      borderRadius: BorderRadius.all(Radius.circular(12.r))
                  ),
                  child: Center(child: Text('Update Profile',style: myStyleInter(16.sp, Colors.white,FontWeight.w700),)),

                ),
              ),















            ],
          ),
        ),
      ),
    );
  }
}
