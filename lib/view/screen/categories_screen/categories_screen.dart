

import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:foodie_resturent_user_app/data/model/response_model/categories_product_model.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';

import '../../../controller/categories_controller.dart';
import '../../../utils/app_color_resources/app_color_resources.dart';
import '../../../utils/app_style.dart';



import 'package:flutter/material.dart';

/*class CategoriesScreen extends StatefulWidget {
  static const String routeName = '/categories_route';

  CategoriesScreen({Key? key}) : super(key: key);

  @override
  _CategoriesScreenState createState() => _CategoriesScreenState();
}

class _CategoriesScreenState extends State<CategoriesScreen> {
  int _selectedTabIndex = 0;
  final CategoriesController _controller = Get.put(CategoriesController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColorResources.primaryColor.withOpacity(0.92),
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(kToolbarHeight),
        child: AppBar(
          backgroundColor: AppColorResources.primaryColor.withOpacity(0.92),// Change to your desired app bar color
          elevation: 0,
          title: Text('Categories',style: myStyleInter(16.sp, AppColorResources.subBlackColor,FontWeight.w700),),

          actions: [
            Padding(
              padding: EdgeInsets.only(right: 20.0),
              child: Icon(Icons.shopping_cart, size: 19),
            ),
          ],
        ),
      ),



      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [

            Expanded(
              flex: 2,
              child: ListView.separated(
                itemCount: categoriesProductModelList.length,
                separatorBuilder: (BuildContext context, int index) => SizedBox(height: 6.h,),
                itemBuilder: (BuildContext context, index) {
                  final categoryItem = categoriesProductModelList[index];
                  return GestureDetector(
                    onTap: () {
                      setState(() {
                        _selectedTabIndex = index;
                      });
                    },
                    child: Container(
                      height: 130,
                      width: 100,
                      decoration: BoxDecoration(
                          color: _selectedTabIndex == index ? AppColorResources.primaryPinkColor : AppColorResources.primaryWhiteColor,
                          borderRadius: BorderRadius.all(Radius.circular(10))),
                      child: Column(
                        children: [
                          ClipRRect(
                            child: Image.asset('${categoryItem.productImage}', fit: BoxFit.cover, height: 100,),
                            borderRadius: BorderRadius.only(topLeft: Radius.circular(10), topRight: Radius.circular(10),),),
                          SizedBox(height: 4),
                          Expanded(
                              child: Text('${categoryItem.productName}',style: myStyleInter(10.sp, AppColorResources.subBlackColor,FontWeight.w600),)),
                        ],
                      ),
                    ),
                  );
                },
              ),
            ),


            // Expanded(
            //   flex: 5,
            //   child: Column(
            //     children: [
            //       Text('Content for Tab $_selectedTabIndex'),
            //       // Add more content based on the selected tab
            //     ],
            //   ),
            // )


            Expanded(
              flex: 5,
              child: Obx(() {
                return GridView.builder(
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    crossAxisSpacing: 8.0,
                    mainAxisSpacing: 8.0,
                  ),
                  itemCount: categoriesProductModelList.length,
                  itemBuilder: (BuildContext context, index) {
                    final product = categoriesProductModelList[index];
                    bool isInCart = _controller.cartItems.any((item) => item.product == product);
                    bool isFavorite = _controller.favoriteItems.contains(product);

                    return GestureDetector(
                      onTap: () {
                        // Handle product tap
                      },
                      child: Container(
                        padding: EdgeInsets.all(8.0),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            // Your product image
                            Image.asset(
                              '${product.productImage}',
                              fit: BoxFit.cover,
                              height: 100,
                            ),
                            SizedBox(height: 8.0),
                            Text(
                              '${product.productName}',
                              style: TextStyle(fontSize: 14.0, fontWeight: FontWeight.bold),
                            ),
                            SizedBox(height: 8.0),
                            Text(
                              '\$${product.categoriwistItemList![0].categoriItemPrice}',
                              style: TextStyle(fontSize: 12.0),
                            ),
                            SizedBox(height: 8.0),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                // Add to Cart button
                                ElevatedButton(
                                  onPressed: () {
                                    if (isInCart) {
                                      _controller.removeFromCart(product);
                                    } else {
                                      _controller.addToCart(product);
                                    }
                                  },
                                  child: isInCart ? Text('Remove from Cart') : Text('Add to Cart'),
                                ),

                                // Favorite button
                                IconButton(
                                  icon: Icon(isFavorite ? Icons.favorite : Icons.favorite_border),
                                  onPressed: () {
                                    _controller.toggleFavorite(product);
                                  },
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    );
                  },
                );
              }),
            ),



          ],
        ),
      ),
    );
  }
}*/




import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../widget/food_item_preview_card/add_to_cart_product_item.dart';


class CategoriesScreen extends StatefulWidget {
  static const String routeName = '/categories_route';

  CategoriesScreen({Key? key}) : super(key: key);

  @override
  _CategoriesScreenState createState() => _CategoriesScreenState();
}

class _CategoriesScreenState extends State<CategoriesScreen> {
  int _selectedTabIndex = 0;
  final CategoriesController _controller = Get.put(CategoriesController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColorResources.primaryColor.withOpacity(0.92),
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(kToolbarHeight),
        child: AppBar(
          backgroundColor: AppColorResources.primaryColor.withOpacity(0.92),
          elevation: 0,
          title: Text(
            'Categories',
            style: myStyleInter(16.sp, AppColorResources.subBlackColor, FontWeight.w700),
          ),
          actions: [
            Padding(
              padding: EdgeInsets.only(right: 20.0),
              child: Icon(Icons.shopping_cart, size: 19),
            ),
          ],
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Expanded(
              flex: 2,
              child: ListView.separated(
                itemCount: categoriesProductModelList.length,
                separatorBuilder: (BuildContext context, int index) =>
                    SizedBox(height: 6.h,),
                itemBuilder: (BuildContext context, index) {
                  final categoryItem = categoriesProductModelList[index];
                  return GestureDetector(
                    onTap: () {
                      setState(() {
                        _selectedTabIndex = index;
                      });
                    },
                    child: Container(
                      height: 130,
                      width: 100,
                      decoration: BoxDecoration(
                        color: _selectedTabIndex == index
                            ? AppColorResources.primaryPinkColor
                            : AppColorResources.primaryWhiteColor,
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                      ),
                      child: Column(
                        children: [
                          ClipRRect(
                            child: Image.asset(
                              '${categoryItem.productImage}',
                              fit: BoxFit.cover,
                              height: 100,
                            ),
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(10),
                              topRight: Radius.circular(10),
                            ),
                          ),
                          SizedBox(height: 4),
                          Expanded(
                            child: Text(
                              '${categoryItem.productName}',
                              style: myStyleInter(10.sp, AppColorResources.subBlackColor, FontWeight.w600),
                            ),
                          ),
                        ],
                      ),
                    ),
                  );
                },
              ),
            ),
            Expanded(
              flex: 5,
              child: SingleChildScrollView(
                physics: AlwaysScrollableScrollPhysics(),
                child: Container(
                  decoration: BoxDecoration(
                    gradient: new LinearGradient(
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                        colors: [
                          AppColorResources.primaryColor,
                          AppColorResources.primaryWhiteColor,
                        ]
                    ),
                  ),
                  child: Column(
                    children: [

                      /// Product Cart
                      GridView.builder(
                          physics: NeverScrollableScrollPhysics(),
                          shrinkWrap: true,
                          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 2,
                            mainAxisSpacing: 15,
                            crossAxisSpacing: 14,
                            childAspectRatio: 4/4.6,
                          ),
                          itemCount:20,
                          itemBuilder: (BuildContext context, int index) {
                              return InkWell(
                                onTap: (){

                                },
                                child: Container(
                                  margin: EdgeInsets.only(left: index % 2 == 0?12.w:0.w, right: index % 2 == 0?0.w:12.w),
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10.r),
                                    color: AppColorResources.primaryWhiteColor,
                                    boxShadow: [
                                      BoxShadow(
                                        offset: Offset(0.5, 0.5),
                                        color: AppColorResources.primaryColor.withOpacity(0.6),
                                        blurRadius: 3,
                                      ),
                                    ],
                                  ),
                                  child: Stack(
                                    children: [

                                      /// Product
                                      Positioned(
                                        child: Column(
                                          children: [
                                            Expanded(
                                              flex:3,
                                              child: Center(
                                                child: ClipRRect(
                                                  borderRadius: BorderRadius.circular(10.r),
                                                  child: CachedNetworkImage(
                                                    fit: BoxFit.cover,
                                                    width: double.infinity,
                                                    imageUrl: 'https://upload.wikimedia.org/wikipedia/commons/6/64/Foods_%28cropped%29.jpg',
                                                    progressIndicatorBuilder: (context, url, downloadProgress) => Image.asset("assets/images/place_holder_image.png", fit: BoxFit.fill,),
                                                    errorWidget: (context, url, error) => Image.asset("assets/images/placeholder.jpg", fit: BoxFit.fill,),
                                                  ),
                                                ),
                                              ),
                                            ),

                                            Expanded(
                                              flex:2,
                                              child: Container(
                                                padding: EdgeInsets.symmetric(horizontal: 5.w,),
                                                child: Column(
                                                  crossAxisAlignment: CrossAxisAlignment.start,
                                                  // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                                  children: [
                                                    Text('Juice', style: TextStyle(fontSize: 12.sp, color: AppColorResources.primaryBlack, fontWeight: FontWeight.w500), overflow: TextOverflow.ellipsis,),

                                                    Row(
                                                      children: [
                                                        Text('\$120',
                                                            style: TextStyle(fontSize: 12.sp, color: AppColorResources.primaryBlack.withOpacity(0.7), fontWeight: FontWeight.w500)),
                                                        SizedBox(width: 10.w,),
                                                        Text(
                                                          '\$320',
                                                          style: TextStyle(
                                                            fontSize: 12.sp,
                                                            color: AppColorResources.primaryPinkColor,
                                                            fontWeight: FontWeight.w500,
                                                            decoration: TextDecoration.lineThrough, // Use decoration property here
                                                            decorationColor:AppColorResources.primaryPinkColor,
                                                          ),
                                                        ),

                                                      ],
                                                    ),

                                                    // Row(
                                                    //   children: [
                                                    //     Icon(Icons.star, color: Colors.orange, size: 15.sp,),
                                                    //     Text('4.69', style: TextStyle(fontSize: 12.sp, color: Colors.orange, fontWeight: FontWeight.w500,),),
                                                    //   ],
                                                    // ),


                                                    // Row(
                                                    //   children: [
                                                    //     Text('Stock',  style:TextStyle(fontSize: 12.sp, color: AppColorResources.primaryBlack.withOpacity(0.7), fontWeight: FontWeight.w400),),
                                                    //     LinearPercentIndicator(
                                                    //       width: 90.0,
                                                    //       animation: true,
                                                    //       lineHeight: 13.0,
                                                    //       animationDuration: 1500,
                                                    //       percent:0.5,
                                                    //       center: Text("5",
                                                    //         style: TextStyle(fontSize: 10.sp, color: AppColorResources.primaryWhiteColor, fontWeight: FontWeight.w400),),
                                                    //
                                                    //       progressColor: AppColorResources.primaryPinkColor,
                                                    //       barRadius: Radius.circular(10.r),
                                                    //       backgroundColor: AppColorResources.primaryBlack.withOpacity(0.3),
                                                    //     ),
                                                    //   ],
                                                    // ),
                                                  ],
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),

                                      /// Discount
                                      Positioned(
                                        top: 5,
                                        left: 0,
                                        child: InkWell(
                                          onTap: (){},
                                          child: Container(
                                            height: 20.h,
                                            width: 75.w,
                                            alignment: Alignment.centerLeft,
                                            padding: EdgeInsets.only(left: 5.w),
                                            decoration: BoxDecoration(
                                              image: DecorationImage(image: AssetImage('assets/images/discount_card.png'), fit: BoxFit.fill),
                                            ),
                                            child: Text('2% OFF', style: TextStyle(fontSize: 10.sp, color: AppColorResources.primaryWhiteColor, fontWeight: FontWeight.w500),),
                                          ),
                                        ),
                                      ),

                                      /// Favorite
                                      Positioned(
                                        top: 5,
                                        right: 5,
                                        child: InkWell(
                                          onTap: (){
                                            setState(() {
                                              // viewAllProductsProvider.setIsFavorite(viewAllProductsProvider.productsList[index].isFavorite!);
                                              // viewAllProductsProvider.productsList[index].isFavorite = !viewAllProductsProvider.productsList[index].isFavorite!;
                                              // isFavorite = !isFavorite;
                                            });
                                           // viewAllProductsProvider.saveFavoriteStatus(viewAllProductsProvider.productsList[index].id, viewAllProductsProvider.isFavorite!);
                                          },
                                          // child: viewAllProductsProvider.productsList[index].isFavorite == false?
                                          child:Icon(Icons.favorite_outline, color:AppColorResources.primaryPinkColor, size: 20.sp,)
                                          //Icon(Icons.favorite, color: AppColors.appRedColor, size: 20.sp,),
                                        ),
                                      ),


                                    ],
                                  ),
                                ),
                              );

                          }
                      ),



                      //SizedBox(height: 20.h,),
                    ],
                  ),
                ),
              ),
            ),

          ],
        ),
      ),
    );
  }
}




