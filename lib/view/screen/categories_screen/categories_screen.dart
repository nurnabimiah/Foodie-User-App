

import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:foodie_resturent_user_app/data/model/response_model/categories_product_model.dart';
import 'package:foodie_resturent_user_app/view/screen/product_details_screen/product_details_screen.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import '../../../controller/categories_controller.dart';
import '../../../utils/app_color_resources/app_color_resources.dart';
import '../../../utils/app_style.dart';
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
  List<CategoriWiseItemList> selectedCategoryItems = [];


  @override
  void initState() {
    super.initState();
    // Set initial value for selectedCategoryItems
    if (categoriesProductModelList.isNotEmpty) {
      selectedCategoryItems = categoriesProductModelList[0].categoriwistItemList ?? [];
    }
  }

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
            ///...........categories name........................................
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




            ///...........categories item........................................
            Expanded(
              flex: 5,
              child: SingleChildScrollView(
                physics: AlwaysScrollableScrollPhysics(),
                child: Container(
                  decoration: BoxDecoration(
                   color: AppColorResources.primaryColor,
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
                          //bool isInCart = _controller.cartItems.any((item) => item.product == product);
                          bool isFavorite = _controller.favoriteItems.contains(product);

                          ///.............navigate to product details screen.............
                          return GestureDetector(
                            onTap: (){
                              Get.toNamed(ProductDetailsScreen.routeName);
                            },

                            child: AddToCartProductItem(
                              key:  Key(product.categoriItemId.toString()),
                              product: product,
                              //isInCart: isInCart,
                              //isFavorite: isFavorite,
                              categoriwistItemList: selectedCategoryItems,
                            ),
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












