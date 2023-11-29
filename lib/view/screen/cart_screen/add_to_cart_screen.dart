


import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../utils/app_color_resources/app_color_resources.dart';
import '../../../utils/app_style.dart';

class AddToCartScreen extends StatelessWidget {
  static const String routeName = '/addto_cart_route';

  const AddToCartScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColorResources.primaryColor.withOpacity(0.94),
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(kToolbarHeight),
        child: AppBar(
          backgroundColor: AppColorResources.primaryColor,
          elevation: 0,
          title: Text('My cart', style: myStyleInter(14.sp, AppColorResources.subBlackColor, FontWeight.w700),),),),


      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              color: AppColorResources.primaryWhiteColor,
              child: ListView.separated(
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                separatorBuilder: (BuildContext, index) => Divider(),
                itemCount: 2,
                itemBuilder: (BuildContext context, index) {
                  return Container(
                    color: AppColorResources.primaryWhiteColor,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Flexible(
                          child: CachedNetworkImage(
                            fit: BoxFit.fitHeight,
                            width: double.infinity,
                            height: 80.h,
                            imageUrl: 'https://img.freepik.com/premium-photo/fried-chicken-with-french-fries-nuggets-meal-junk-food-unhealthy-food_1339-120123.jpg',
                            progressIndicatorBuilder: (context, url, downloadProgress) =>
                                Image.asset("assets/images/place_holder_image.png", fit: BoxFit.fill),
                            errorWidget: (context, url, error) =>
                                Image.asset("assets/images/placeholder.jpg", fit: BoxFit.fill),
                          ),
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('Sandwich', style: myStyleInter(14.sp, AppColorResources.subBlackColor, FontWeight.w600)),
                            Text('\$2.2', style: myStyleInter(14.sp, AppColorResources.subBlackColor, FontWeight.w500)),
                          ],
                        ),
                        Spacer(),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Text('Sandwich', style: myStyleInter(14.sp, AppColorResources.subBlackColor, FontWeight.w600)),

                          ],
                        ),

                      ],
                    ),
                  );
                },
              ),
            ),

            Container(
              height: 50.h, // Adjust the height as needed
              color: AppColorResources.primaryColor,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
                child: Row(
                  children: [
                    Text(
                      'Order Summary',
                      style: myStyleInter(14.sp, AppColorResources.subBlackColor, FontWeight.w600),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

