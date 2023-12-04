


import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:foodie_resturent_user_app/view/screen/cart_screen/add_to_cart_screen.dart';
import 'package:foodie_resturent_user_app/view/screen/categories_screen/categories_screen.dart';
import 'package:foodie_resturent_user_app/view/widget/carousel_slider_widget/carousel_slider_widget.dart';
import 'package:foodie_resturent_user_app/view/widget/food_item_preview_card/food_item_preview_card.dart';
import 'package:foodie_resturent_user_app/view/widget/text_form_filed_widget/text_form_filed_widget.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../../../utils/app_color_resources/app_color_resources.dart';
import '../../../utils/app_style.dart';
import '../notification_screen/notification_screen.dart';

class HomeScreen extends StatelessWidget {
  static const String routeName = '/home_route';
  HomeScreen({Key? key}) : super(key: key);

  final searchController = TextEditingController();



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColorResources.primaryColor,
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(kToolbarHeight),
        child: AppBar(
          backgroundColor: AppColorResources.primaryColor,
          elevation: 0,
          title: Text('Foodie Flavour',style: myStyleInter(18.sp, AppColorResources.primaryPinkColor,FontWeight.w700),),
          actions: [
            Padding(
                padding:  EdgeInsets.only(right: 8.0.w),
                child: IconButton(onPressed: () {
                  Get.toNamed(NotificationScreen.routeName);
                }, icon:  Icon(Icons.notifications_active,size: 19.sp,),)
            ),

            Padding(
              padding:  EdgeInsets.only(right: 8.0.w),
              child: GestureDetector(
                  onTap: (){
                    Get.toNamed(AddToCartScreen.routeName);
                  },
                  child: Icon(Icons.shopping_cart,size: 19.sp,)),
            ),
          ],

        ),
      ),

      body: SingleChildScrollView(
        child: Column(
          children: [
            //...........search..................................................
            Padding(
              padding:  EdgeInsets.only(top: 10.0.h,left: 18.w,right: 18.w),
              child: CustomTextFormFiled(
                  hinText: 'Search your favourite food',
                  keyboardType: TextInputType.text,
                  prefixIcon: Icon(Icons.search),
                  textEditingController: searchController,
                  textFormFiledValidator: (value){

                  },

              ),
            ),

            //carousel slider....................................................
            CarouselSliderWidet(),

            //..............categories item list..................................
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 19.w,vertical: 15.h),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Categories',style: myStyleInter(14.sp, AppColorResources.subBlackColor,FontWeight.w600),),
                  GestureDetector(
                    onTap: (){
                      Get.toNamed(CategoriesScreen.routeName);
                    },
                    child: Text("View All",style: myStyleInter(14.sp, AppColorResources.primaryPinkColor,FontWeight.w600),),
                  ),
                ],
              ),
            ),

            Padding(
              padding: EdgeInsets.symmetric(horizontal: 19.0.w),
              child: Container(
                height: 170.h,
                child: ListView.separated(
                    shrinkWrap: true,
                    scrollDirection: Axis.horizontal,
                    itemCount: 10,
                    separatorBuilder: (BuildContext context,index)=>SizedBox(width: 10.w,),
                    itemBuilder: (BuildContext context,index){
                      return Container(
                        width: 150.w,
                        decoration: BoxDecoration(
                          color: AppColorResources.primaryWhiteColor,
                          borderRadius: BorderRadius.all(Radius.circular(10.r))
                        ),

                        child: Column(
                          children: [
                            ClipRRect(
                               
                                child: Image.asset('assets/images/chicken _dish_image.jpg',fit: BoxFit.cover,height: 135.h,),
                                borderRadius: BorderRadius.only(topLeft: Radius.circular(10.r,),topRight:  Radius.circular(10.r,)),
                            ),
                            SizedBox(height: 4.h,),
                            Expanded(child: Text('Chiken Dish',style: myStyleInter(13.sp, AppColorResources.subBlackColor,FontWeight.w600),)),


                          ],
                        ),


                      );
                    },


                ),
              ),
            ),
            SizedBox(height: 20.h,),


            //..............most popular  item list...............................

            Padding(
              padding: EdgeInsets.symmetric(horizontal: 19.w,vertical: 15.h),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Most Popular',style: myStyleInter(14.sp, AppColorResources.subBlackColor,FontWeight.w600),),
                  GestureDetector(
                    onTap: (){
                      //Get.toNamed();
                    },
                    child: Text("View All",style: myStyleInter(14.sp, AppColorResources.primaryPinkColor,FontWeight.w600),),
                  ),
                ],
              ),
            ),

            Padding(
              padding: EdgeInsets.symmetric(horizontal: 19.0.w),
              child: Container(
                height: 180.h,
                child: ListView.separated(
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  itemCount: 10,
                  separatorBuilder: (BuildContext context,index)=>SizedBox(width: 10.w,),
                  itemBuilder: (BuildContext context,index){
                    return FooditemPreviewCard();
                  },


                ),
              ),
            ),





















          ],
        ),
      ),

    );
  }
}
