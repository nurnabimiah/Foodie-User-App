

import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:foodie_resturent_user_app/data/model/response_model/categories_product_model.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import '../../../controller/categories_controller.dart';
import '../../../utils/app_color_resources/app_color_resources.dart';
import '../../../utils/app_style.dart';


class CategoriesScreen extends StatefulWidget {
  static const String routeName = '/categories_route';

  CategoriesScreen({Key? key}) : super(key: key);

  @override
  _CategoriesScreenState createState() => _CategoriesScreenState();
}


class _CategoriesScreenState extends State<CategoriesScreen> {
  int _selectedTabIndex = 0;
  final CategoriesController _controller = Get.put(CategoriesController());
  List<CategoriWiseItemList> selectedCategoryItems = [];

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
                separatorBuilder: (BuildContext context, int index) => SizedBox(height: 6.h,),
                itemBuilder: (BuildContext context, index) {
                  final categoryItem = categoriesProductModelList[index];
                  return GestureDetector(
                    onTap: () {
                      setState(() {
                        _selectedTabIndex = index;
                        selectedCategoryItems = categoryItem.categoriwistItemList!;
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
                   color: AppColorResources.primaryColor,
                    // gradient: new LinearGradient(
                    //   begin: Alignment.topCenter,
                    //   end: Alignment.bottomCenter,
                    //   colors: [
                    //     AppColorResources.primaryColor,
                    //     AppColorResources.primaryWhiteColor,
                    //   ],
                    // ),
                  ),
                  child: Column(
                    children: [
                      GridView.builder(
                        physics: NeverScrollableScrollPhysics(),
                        shrinkWrap: true,
                        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 2,
                          mainAxisSpacing: 15,
                          crossAxisSpacing: 0.w,
                          childAspectRatio: 4 / 4.6,
                        ),
                        itemCount: selectedCategoryItems.length,
                        itemBuilder: (BuildContext context, int index) {
                          final product = selectedCategoryItems[index];
                          bool isInCart = _controller.cartItems.any((item) => item.product == product);
                          bool isFavorite = _controller.favoriteItems.contains(product);

                          return AddToCartProductItem(
                            product: product,
                            isInCart: isInCart,
                            isFavorite: isFavorite,
                            categoriwistItemList: selectedCategoryItems,
                          );
                        },
                      ),
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









class AddToCartProductItem extends StatefulWidget {
  final CategoriWiseItemList product;
  final bool isInCart;
  final bool isFavorite;
  final List<CategoriWiseItemList>? categoriwistItemList; // Added this line

  const AddToCartProductItem({
    Key? key,
    required this.product,
    required this.isInCart,
    required this.isFavorite,
    required this.categoriwistItemList, // Added this line
  }) : super(key: key);

  @override
  _AddToCartProductItemState createState() => _AddToCartProductItemState();
}

class _AddToCartProductItemState extends State<AddToCartProductItem> {
  int quantity = 1;
  bool showButtons = false;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 8.0.w, right: 2.w),
      child: Container(
        width: double.infinity,
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
                    flex: 4,
                    child: Center(
                      child: Stack(
                       alignment: Alignment.center,
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.only(topLeft: Radius.circular(10.r,),topRight:Radius.circular(10.r,) ),
                            child: CachedNetworkImage(
                              fit: BoxFit.fitHeight,
                              width: double.infinity,
                               height: 120.h,
                              imageUrl: widget.product.productImage,
                              progressIndicatorBuilder: (context, url, downloadProgress) =>
                                  Image.asset("assets/images/place_holder_image.png", fit: BoxFit.fill,),
                              errorWidget: (context, url, error) =>
                                  Image.asset("assets/images/placeholder.jpg", fit: BoxFit.fill,),
                            ),
                          ),

                          if (showButtons) Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              GestureDetector(
                                onTap: () {
                                  // Handle decrement logic
                                  setState(() {
                                    // Decrement the quantity
                                    quantity = quantity > 1 ? quantity - 1 : quantity;
                                  });
                                },
                                child: Container(
                                  decoration: BoxDecoration(
                                    color: Colors.white.withOpacity(0.7),
                                    shape: BoxShape.circle,
                                  ),
                                  child: Icon(Icons.remove, size: 20),
                                ),
                              ),
                              SizedBox(width: 10),
                              Text(quantity.toString(), style: TextStyle(fontSize: 20)),
                              SizedBox(width: 10),
                              GestureDetector(
                                onTap: () {
                                  // Handle increment logic
                                  setState(() {
                                    // Increment the quantity
                                    quantity++;
                                  });
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
                        ],
                      ),
                    ),
                  ),

                  Expanded(
                    flex: 2,
                    child: Container(
                      padding: EdgeInsets.symmetric(horizontal: 5.w, vertical: 2.h),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Expanded(
                                child: Text(
                                  widget.product.categoriItemName,
                                  style: TextStyle(
                                    fontSize: 12.sp,
                                    color: AppColorResources.primaryBlack,
                                    fontWeight: FontWeight.w500,
                                  ),
                                  overflow: TextOverflow.ellipsis,
                                ),
                              ),
                              GestureDetector(
                                onTap: () {
                                  setState(() {
                                    // Toggle the visibility of the increment and decrement buttons
                                    showButtons = !showButtons;
                                  });
                                },
                                child: Image.asset(
                                  'assets/icons/add_to_cart.jpg',
                                  height: 23.h,
                                  width: 23.w,
                                ),
                              )
                            ],
                          ),
                          Row(
                            children: [
                              Text(
                                '\$${widget.product.categoriItemPrice}',
                                style: TextStyle(
                                  fontSize: 12.sp,
                                  color: AppColorResources.primaryBlack.withOpacity(0.7),
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                              SizedBox(width: 10.w),
                              // ... your existing code ...
                            ],
                          ),
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
                onTap: () {},
                child: Container(
                  height: 20.h,
                  width: 75.w,
                  alignment: Alignment.centerLeft,
                  padding: EdgeInsets.only(left: 5.w),
                  decoration: BoxDecoration(
                    image: DecorationImage(image: AssetImage('assets/images/discount_card.png'), fit: BoxFit.fill),
                  ),
                  child: Text(
                    '2% OFF',
                    style: TextStyle(fontSize: 10.sp, color: AppColorResources.primaryWhiteColor, fontWeight: FontWeight.w500),
                  ),
                ),
              ),
            ),

            /// Favorite
            Positioned(
              top: 5,
              right: 5,
              child: InkWell(
                onTap: () {
                  setState(() {
                    // Handle favorite button tap
                  });
                },
                child: Icon(Icons.favorite_outline, color: AppColorResources.primaryPinkColor, size: 20.sp),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
