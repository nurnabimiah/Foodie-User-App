


import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:foodie_resturent_user_app/view/widget/custom_image_widget/selected_image_widget.dart';
import '../../../utils/app_color_resources/app_color_resources.dart';
import '../../../utils/app_style.dart';
import '../../widget/custom_image_widget/custom_image_widget.dart';



/*class ProductDetailsScreen extends StatelessWidget {

  static const String routeName = '/product_details_route';
  ProductDetailsScreen({Key? key}) : super(key: key);

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
            'Product Name',
            style: myStyleInter(16.sp, AppColorResources.subBlackColor, FontWeight.w700),
          ),

        ),
      ),

      body: Column(
        children: [
          Container(
            height: 200.h,
            color: AppColorResources.primaryWhiteColor,
            child: PageView.builder(
              itemCount:3,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.fromLTRB(20, 20, 20, 30),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(15),
                    child: CustomImage(
                      image: 'https://insanelygoodrecipes.com/wp-content/uploads/2021/10/Delicious-Fruit-Juices-Orange-Kiwi-and-Strawberry.jpg',
                      fit: BoxFit.cover,
                    ),
                  ),
                );
              },
              onPageChanged: (index) {
                // Provider.of<CartProvider>(context, listen: false).setSelect(index, true);
                // Provider.of<ProductProvider>(context, listen: false).setImageSliderSelectedIndex(index);
              },
            ),
          ),

         Container(
             height: 60.h,
             child: SelectedImageWidget())



        ],
      ),



    );
  }
}*/



class ProductDetailsScreen extends StatefulWidget {
  static const String routeName = '/product_details_route';

  ProductDetailsScreen({Key? key}) : super(key: key);

  @override
  _ProductDetailsScreenState createState() => _ProductDetailsScreenState();
}

class _ProductDetailsScreenState extends State<ProductDetailsScreen> {
  final PageController _pageController = PageController();
  int _selectedImageIndex = 0;

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
            'Product Name',
            style: myStyleInter(16.sp, AppColorResources.subBlackColor, FontWeight.w700),
          ),
        ),
      ),
      body: Column(
        children: [
          Container(
            height: 200.h,
            color: AppColorResources.primaryWhiteColor,
            child: PageView.builder(
              controller: _pageController,
              itemCount: 3,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.fromLTRB(20, 20, 20, 30),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(15),
                    child: CustomImage(
                      image: 'https://insanelygoodrecipes.com/wp-content/uploads/2021/10/Delicious-Fruit-Juices-Orange-Kiwi-and-Strawberry.jpg',
                      fit: BoxFit.cover,
                    ),
                  ),
                );
              },
              onPageChanged: (index) {
                setState(() {
                  _selectedImageIndex = index;
                });
              },
            ),
          ),
          Container(
            height: 60.h,
            child: SelectedImageWidget(
              onPageSelected: (index) {
                _pageController.animateToPage(
                  index,
                  duration: Duration(milliseconds: 500),
                  curve: Curves.easeInOut,
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}

class SelectedImageWidget extends StatelessWidget {
  final ValueChanged<int>? onPageSelected;

  const SelectedImageWidget({Key? key, this.onPageSelected}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 3,
      scrollDirection: Axis.horizontal,
      padding: const EdgeInsets.symmetric(horizontal: 10),
      itemBuilder: (context, index) {
        return Padding(
          padding: EdgeInsets.only(right: 12.w),
          child: InkWell(
            onTap: () {
              print('................................................item is clicked now ');
              print('................................................item is clicked now ');
              print('................................................item is clicked now ');
              onPageSelected?.call(index);
            },
            child: Container(
              width: 70,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10.r),
                border: Border.all(color: AppColorResources.primaryPinkColor, width: 1),
              ),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(10.r),
                child: CustomImage(
                  image: 'https://recipes.net/wp-content/uploads/2023/09/should-i-still-drink-fruit-juice-1694773440.jpg',
                  width: 60,
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}


// class ProductDetailsScreen extends StatefulWidget {
//   static const String routeName = '/product_details_route';
//
//   ProductDetailsScreen({Key? key}) : super(key: key);
//
//   @override
//   _ProductDetailsScreenState createState() => _ProductDetailsScreenState();
// }
//
// class _ProductDetailsScreenState extends State<ProductDetailsScreen> {
//   final PageController _pageController = PageController();
//   int _selectedImageIndex = 0;
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: AppColorResources.primaryColor.withOpacity(0.92),
//       appBar: PreferredSize(
//         preferredSize: Size.fromHeight(kToolbarHeight),
//         child: AppBar(
//           backgroundColor: AppColorResources.primaryColor.withOpacity(0.92),
//           elevation: 0,
//           title: Text(
//             'Product Name',
//             style: myStyleInter(16.sp, AppColorResources.subBlackColor, FontWeight.w700),
//           ),
//         ),
//       ),
//       body: Column(
//         children: [
//           Container(
//             height: 200.h,
//             color: AppColorResources.primaryWhiteColor,
//             child: PageView.builder(
//               controller: _pageController,
//               itemCount: 3,
//               itemBuilder: (context, index) {
//                 return Padding(
//                   padding: const EdgeInsets.fromLTRB(20, 20, 20, 30),
//                   child: ClipRRect(
//                     borderRadius: BorderRadius.circular(15),
//                     child: CustomImage(
//                       image: 'https://insanelygoodrecipes.com/wp-content/uploads/2021/10/Delicious-Fruit-Juices-Orange-Kiwi-and-Strawberry.jpg',
//                       fit: BoxFit.cover,
//                     ),
//                   ),
//                 );
//               },
//               onPageChanged: (index) {
//                 setState(() {
//                   _selectedImageIndex = index;
//                 });
//               },
//             ),
//           ),
//           Expanded(
//             child: SelectedImageWidget(
//               pageController: _pageController,
//               onPageSelected: (index) {
//                 _pageController.animateToPage(
//                   index,
//                   duration: Duration(milliseconds: 500),
//                   curve: Curves.easeInOut,
//                 );
//               },
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }
//
// class SelectedImageWidget extends StatelessWidget {
//   final PageController pageController;
//   final ValueChanged<int>? onPageSelected;
//
//   const SelectedImageWidget({Key? key, required this.pageController, this.onPageSelected}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return ListView.builder(
//       itemCount: 5,
//       scrollDirection: Axis.horizontal,
//       padding: const EdgeInsets.symmetric(horizontal: 10),
//       itemBuilder: (context, index) {
//         return Padding(
//           padding: const EdgeInsets.only(right: 10),
//           child: InkWell(
//             onTap: () {
//               onPageSelected?.call(index);
//             },
//             child: Container(
//               width: 60,
//               decoration: BoxDecoration(
//                 borderRadius: BorderRadius.circular(10.r),
//                 border: Border.all(color: AppColorResources.primaryPinkColor, width: 1),
//               ),
//               child: ClipRRect(
//                 borderRadius: BorderRadius.circular(10.r),
//                 child: CustomImage(
//                   image: 'https://recipes.net/wp-content/uploads/2023/09/should-i-still-drink-fruit-juice-1694773440.jpg',
//                   width: 60,
//                   fit: BoxFit.cover,
//                 ),
//               ),
//             ),
//           ),
//         );
//       },
//     );
//   }
// }
