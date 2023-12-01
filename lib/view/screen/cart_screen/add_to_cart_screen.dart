


import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:foodie_resturent_user_app/view/widget/button_widget/custom_button_widget.dart';
import '../../../utils/app_color_resources/app_color_resources.dart';
import '../../../utils/app_style.dart';

class AddToCartScreen extends StatelessWidget {
  static const String routeName = '/addto_cart_route';

  AddToCartScreen({Key? key}) : super(key: key);

  final couponCodeController = TextEditingController();

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


      body: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  //................... add to cart item  container...................
                  SizedBox(height: 10.h,),
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
                                child: Padding(
                                  padding:  EdgeInsets.only(bottom: 8.0.h),
                                  child: CachedNetworkImage(
                                    fit: BoxFit.fitHeight,
                                    width: 100.w,
                                    height: 80.h,
                                    imageUrl: 'https://img.freepik.com/premium-photo/fried-chicken-with-french-fries-nuggets-meal-junk-food-unhealthy-food_1339-120123.jpg',
                                    progressIndicatorBuilder: (context, url, downloadProgress) =>
                                        Image.asset("assets/images/place_holder_image.png", fit: BoxFit.fill),
                                    errorWidget: (context, url, error) =>
                                        Image.asset("assets/images/placeholder.jpg", fit: BoxFit.fill),
                                  ),
                                ),
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text('Sandwich', style: myStyleInter(14.sp, AppColorResources.subBlackColor, FontWeight.w600)),
                                  Row(
                                    children: [
                                      Text('\$2.2', style: myStyleInter(14.sp, AppColorResources.subBlackColor, FontWeight.w500)),
                                      SizedBox(width: 120.w,),


                                      Container(
                                        height: 30.h,
                                        width: 90.w,
                                        decoration: BoxDecoration(
                                          color: AppColorResources.primaryPinkColor,
                                          borderRadius: BorderRadius.all(Radius.circular(12.r)),
                                        ),
                                        child: Padding(
                                          padding: EdgeInsets.symmetric(horizontal: 8.0.w),
                                          child: Row(
                                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                            children: [
                                              GestureDetector(
                                                onTap: () {
                                                  // setState(() {
                                                  //   _controller.removeFromCart(widget.product);
                                                  // });
                                                },
                                                child: Container(
                                                  decoration: BoxDecoration(
                                                    color: Colors.white.withOpacity(0.7),
                                                    shape: BoxShape.circle,
                                                  ),
                                                  child: Icon(Icons.remove, size: 20),
                                                ),
                                              ),

                                              Text('1', style: TextStyle(fontSize: 20)),

                                              GestureDetector(
                                                onTap: () {
                                                  // setState(() {
                                                  //   _controller.addToCart(widget.product);
                                                  //
                                                  // });
                                                },
                                                child: Container(
                                                  decoration: BoxDecoration(
                                                    color: Colors.white.withOpacity(0.7),
                                                    shape: BoxShape.circle,
                                                  ),
                                                  child: Icon(Icons.add, size: 20),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),

                                    ],
                                  )
                                ],
                              ),



                            ],
                          ),
                        );
                      },
                    ),
                  ),
                  SizedBox(height: 10.h,),


                  //.................coupon code container............................
                  Container(
                    height: 100.h, // Adjust the height as needed
                    color: AppColorResources.primaryWhiteColor,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Expanded(
                            flex: 3,
                            child: Container(
                              height: 50.h,
                              child: TextFormField(

                                decoration: InputDecoration(
                                  contentPadding: EdgeInsets.only(top: 5.h,left: 12.w),
                                  hintText: 'Enter coupon code',
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(4.0),
                                  ),
                                ),
                              ),
                            ),
                          ),

                          SizedBox(width: 20.w,),
                          Expanded(
                            flex: 1,
                            child: Container(
                              height: 50.h,
                              width: 100.w,
                              decoration: BoxDecoration(
                                color: Colors.grey,
                                borderRadius: BorderRadius.all(Radius.circular(4.r))
                              ),
                              child: Center(child: Text('Apply',style: myStyleInter(14.sp, AppColorResources.primaryBlack,FontWeight.w600),)),
                            ),
                          )

                        ],
                      ),
                    ),
                  ),
                  SizedBox(height: 10.h,),


                  //.................order summary....................................
                  Container(
                      decoration: BoxDecoration(
                        color: AppColorResources.primaryWhiteColor,),

                      child: Padding(
                        padding:  EdgeInsets.only(left: 12.0.w,right: 12.w,top: 12.h,bottom: 12.h),
                        child: Column(
                          children: [

                            Text('Order Summary',style: myStyleInter(15.sp, AppColorResources.primaryBlack,FontWeight.w600),),
                            Divider(color: AppColorResources.primaryBlack,thickness: 0.3),
                            SizedBox(height: 10.h,),



                            ///.............................sub total........................
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text('Sub total',style: myStyleInter(14.sp, AppColorResources.subBlackColor,FontWeight.w500),),
                                Text('\$ 10.20',style: myStyleInter(14.sp, AppColorResources.subBlackColor,FontWeight.w500))
                              ],
                            ),

                            ///.............................vat.....................
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text('0% VAT',style: myStyleInter(14.sp, AppColorResources.subBlackColor,FontWeight.w500),),
                                Text('\$ 0.00',style: myStyleInter(14.sp, AppColorResources.subBlackColor,FontWeight.w500),)
                              ],
                            ),



                            ///.............................delivery cost.................
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text('Delivery Cost',style: myStyleInter(14.sp, AppColorResources.subBlackColor,FontWeight.w500),),
                                Text('\$ 0.50',style: myStyleInter(14.sp, AppColorResources.subBlackColor,FontWeight.w500),)
                              ],
                            ),



                            ///.............................Discount..................
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text('Discount',style: myStyleInter(14.sp, AppColorResources.subBlackColor,FontWeight.w500),),
                                Text('-\$70.0',style: myStyleInter(14.sp, AppColorResources.subBlackColor,FontWeight.w600),)
                              ],
                            ),











                          ],
                        ),
                      )

                  ),




                ],
              ),
            ),
          ),


          //.............total payable container................................

          Container(
            height: 100.h, // Adjust the height as needed
            color: AppColorResources.primaryWhiteColor,
            child: Padding(
              padding:  EdgeInsets.symmetric(horizontal: 16.0.w, vertical: 10.0.h),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('Total Payable',style: myStyleInter(15.sp, AppColorResources.primaryBlack,FontWeight.w600),),
                      Text('\$10.00',style: myStyleInter(15.sp, AppColorResources.primaryPinkColor,FontWeight.w600),),
                    ],
                  ),

                  SizedBox(height: 10.h,),

                  CustomButtonWidget(
                      onTap: (){},
                      buttonText: 'PROCEED TO CHECKOUT'
                  )
                ],
              )
            ),
          ),

        ],
      ),
    );
  }
}

