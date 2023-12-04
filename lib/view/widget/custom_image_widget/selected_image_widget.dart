


import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:foodie_resturent_user_app/utils/app_color_resources/app_color_resources.dart';
import 'custom_image_widget.dart';



class SelectedImageWidget extends StatelessWidget {

  const SelectedImageWidget({Key? key,}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount:3,
        scrollDirection: Axis.horizontal,
        padding: const EdgeInsets.symmetric(horizontal: 10),
        itemBuilder: (context,index){
          return Padding(
            padding:  EdgeInsets.only(right: 12.w),
            child: InkWell(
              onTap: (){
                // Provider.of<CartProvider>(context, listen: false).setSelect(index, true);
              },
              child: Container(

                width: 70,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10.r),
                    border: Border.all(color: AppColorResources.primaryPinkColor,width: 1)
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
        });
  }
}