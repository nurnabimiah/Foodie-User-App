



import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../../../controller/categories_controller.dart';
import '../../../data/model/response_model/categories_product_model.dart';
import '../../../utils/app_color_resources/app_color_resources.dart';




// class AddToCartProductItem extends StatefulWidget {
//   final CategoriWiseItemList product;
//   final List<CategoriWiseItemList>? categoriwistItemList;
//
//   const AddToCartProductItem({
//     Key? key,
//     required this.product,
//     required this.categoriwistItemList,
//   }) : super(key: key);
//
//   @override
//   _AddToCartProductItemState createState() => _AddToCartProductItemState();
// }
//
// class _AddToCartProductItemState extends State<AddToCartProductItem> {
//   bool showButtons = false;
//
//   void dispose() {
//     // Reset showButtons state when the widget is disposed
//     showButtons = false;
//     super.dispose();
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     CategoriesController _controller = Get.find<CategoriesController>();
//     int quantity = _controller.cartQuantity(widget.product);
//     bool isInCart = quantity > 0;
//
//     return Padding(
//       padding: EdgeInsets.only(left: 8.0.w, right: 2.w),
//       child: Container(
//         width: double.infinity,
//         decoration: BoxDecoration(
//           borderRadius: BorderRadius.circular(10.r),
//           color: AppColorResources.primaryWhiteColor,
//           boxShadow: [
//             BoxShadow(
//               offset: Offset(0.5, 0.5),
//               color: AppColorResources.primaryColor.withOpacity(0.6),
//               blurRadius: 3,
//             ),
//           ],
//         ),
//         child: Stack(
//           children: [
//             Positioned(
//               child: Column(
//                 children: [
//                   Expanded(
//                     flex: 4,
//                     child: Center(
//                       child: Stack(
//                         alignment: Alignment.center,
//                         children: [
//                           ClipRRect(
//                             borderRadius: BorderRadius.only(
//                               topLeft: Radius.circular(10.r),
//                               topRight: Radius.circular(10.r),
//                             ),
//                             child: CachedNetworkImage(
//                               fit: BoxFit.fitHeight,
//                               width: double.infinity,
//                               height: 120.h,
//                               imageUrl: widget.product.productImage,
//                               progressIndicatorBuilder: (context, url, downloadProgress) =>
//                                   Image.asset("assets/images/place_holder_image.png", fit: BoxFit.fill),
//                               errorWidget: (context, url, error) =>
//                                   Image.asset("assets/images/placeholder.jpg", fit: BoxFit.fill),
//                             ),
//                           ),
//
//
//                           if (showButtons)
//                             Container(
//                               height: 30.h,
//                               width: 100.w,
//                               decoration: BoxDecoration(
//                                 color: AppColorResources.primaryPinkColor,
//                                 borderRadius: BorderRadius.all(Radius.circular(12.r)),
//                               ),
//                               child: Row(
//                                 mainAxisAlignment: MainAxisAlignment.center,
//                                 children: [
//                                   GestureDetector(
//                                     onTap: () {
//                                       setState(() {
//                                         _controller.removeFromCart(widget.product);
//                                       });
//                                     },
//
//                                     child: Container(
//                                       decoration: BoxDecoration(
//                                         color: Colors.white.withOpacity(0.7),
//                                         shape: BoxShape.circle,
//                                       ),
//                                       child: Icon(Icons.remove, size: 20),
//                                     ),
//                                   ),
//                                   SizedBox(width: 10),
//                                   Text(quantity.toString(), style: TextStyle(fontSize: 20)),
//                                   SizedBox(width: 10),
//                                   GestureDetector(
//                                     onTap: () {
//                                       setState(() {
//                                         _controller.addToCart(widget.product);
//                                       });
//                                     },
//                                     child: Container(
//                                       decoration: BoxDecoration(
//                                         color: Colors.white.withOpacity(0.7),
//                                         shape: BoxShape.circle,
//                                       ),
//                                       child: Icon(Icons.add, size: 20),
//                                     ),
//                                   ),
//                                 ],
//                               ),
//                             ),
//                         ],
//                       ),
//                     ),
//                   ),
//                   Expanded(
//                     flex: 2,
//                     child: Container(
//                       padding: EdgeInsets.symmetric(horizontal: 5.w, vertical: 2.h),
//                       child: Column(
//                         crossAxisAlignment: CrossAxisAlignment.start,
//                         children: [
//                           Row(
//                             mainAxisAlignment: MainAxisAlignment.spaceAround,
//                             children: [
//                               Expanded(
//                                 child: Text(
//                                   widget.product.categoriItemName,
//                                   style: TextStyle(
//                                     fontSize: 12.sp,
//                                     color: AppColorResources.primaryBlack,
//                                     fontWeight: FontWeight.w500,
//                                   ),
//                                   overflow: TextOverflow.ellipsis,
//                                 ),
//                               ),
//                               GestureDetector(
//                                 onTap: () {
//                                   setState(() {
//                                     showButtons = !showButtons;
//                                   });
//                                 },
//                                 child: Image.asset(
//                                   'assets/icons/add_to_cart.jpg',
//                                   height: 23.h,
//                                   width: 23.w,
//                                 ),
//                               ),
//                             ],
//                           ),
//                           Row(
//                             children: [
//                               Text(
//                                 '\$${widget.product.categoriItemPrice}',
//                                 style: TextStyle(
//                                   fontSize: 12.sp,
//                                   color: AppColorResources.primaryBlack.withOpacity(0.7),
//                                   fontWeight: FontWeight.w500,
//                                 ),
//                               ),
//                               SizedBox(width: 10.w),
//                             ],
//                           ),
//                         ],
//                       ),
//                     ),
//                   ),
//                 ],
//               ),
//             ),
//             Positioned(
//               top: 5,
//               left: 0,
//               child: InkWell(
//                 onTap: () {},
//                 child: Container(
//                   height: 20.h,
//                   width: 75.w,
//                   alignment: Alignment.centerLeft,
//                   padding: EdgeInsets.only(left: 5.w),
//                   decoration: BoxDecoration(
//                     // image: DecorationImage(
//                     //   image: AssetImage('assets/images/discount_card.png'),
//                     //   fit: BoxFit.fill,
//                     // ),
//                   ),
//                   child: Text(
//                     '2% OFF',
//                     style: TextStyle(
//                       fontSize: 10.sp,
//                       color: AppColorResources.primaryWhiteColor,
//                       fontWeight: FontWeight.w500,
//                     ),
//                   ),
//                 ),
//               ),
//             ),
//             Positioned(
//               top: 5,
//               right: 5,
//               child: InkWell(
//                 onTap: () {
//                   setState(() {
//                     _controller.toggleFavorite(widget.product);
//                   });
//                 },
//                 child: Icon(
//                   _controller.favoriteItems.contains(widget.product)
//                       ? Icons.favorite
//                       : Icons.favorite_outline,
//                   color: AppColorResources.primaryPinkColor,
//                   size: 20.sp,
//                 ),
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }


class AddToCartProductItem extends StatefulWidget {
  final CategoriWiseItemList product;
  final List<CategoriWiseItemList>? categoriwistItemList;

  const AddToCartProductItem({
    Key? key,
    required this.product,
    required this.categoriwistItemList,
  }) : super(key: key);

  @override
  _AddToCartProductItemState createState() => _AddToCartProductItemState();
}

class _AddToCartProductItemState extends State<AddToCartProductItem> {
  bool showButtons = false;

  @override
  Widget build(BuildContext context) {
    CategoriesController _controller = Get.find<CategoriesController>();
    int quantity = _controller.cartQuantity(widget.product);

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
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(10.r),
                              topRight: Radius.circular(10.r),
                            ),
                            child: CachedNetworkImage(
                              fit: BoxFit.fitHeight,
                              width: double.infinity,
                              height: 120.h,
                              imageUrl: widget.product.productImage,
                              progressIndicatorBuilder: (context, url, downloadProgress) =>
                                  Image.asset("assets/images/place_holder_image.png", fit: BoxFit.fill),
                              errorWidget: (context, url, error) =>
                                  Image.asset("assets/images/placeholder.jpg", fit: BoxFit.fill),
                            ),
                          ),

                          if (showButtons)
                            Container(
                              height: 30.h,
                              width: 100.w,
                              decoration: BoxDecoration(
                                color: AppColorResources.primaryPinkColor,
                                borderRadius: BorderRadius.all(Radius.circular(12.r)),
                              ),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  GestureDetector(
                                    onTap: () {
                                      setState(() {
                                        _controller.removeFromCart(widget.product);
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
                                      setState(() {
                                        _controller.addToCart(widget.product);
                                       // showButtons = true; // Update showButtons to true after adding to cart
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
                                    showButtons = !showButtons;

                                  });
                                },
                                child: Image.asset(
                                  'assets/icons/add_to_cart.jpg',
                                  height: 23.h,
                                  width: 23.w,
                                ),
                              ),
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
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
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
                    // image: DecorationImage(
                    //   image: AssetImage('assets/images/discount_card.png'),
                    //   fit: BoxFit.fill,
                    // ),
                  ),
                  child: Text(
                    '2% OFF',
                    style: TextStyle(
                      fontSize: 10.sp,
                      color: AppColorResources.primaryWhiteColor,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
              ),
            ),
            Positioned(
              top: 5,
              right: 5,
              child: InkWell(
                onTap: () {
                  setState(() {
                    _controller.toggleFavorite(widget.product);
                  });
                },
                child: Icon(
                  _controller.favoriteItems.contains(widget.product)
                      ? Icons.favorite
                      : Icons.favorite_outline,
                  color: AppColorResources.primaryPinkColor,
                  size: 20.sp,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}








