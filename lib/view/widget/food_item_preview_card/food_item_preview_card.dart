



import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:foodie_resturent_user_app/utils/app_color_resources/app_color_resources.dart';

import '../../../utils/app_style.dart';

class FooditemPreviewCard extends StatelessWidget {

  const FooditemPreviewCard({Key? key,}) : super(key: key);



  @override
  Widget build(BuildContext context) {
    return Container(
      width: 150.w,
      decoration: BoxDecoration(
          color: AppColorResources.primaryWhiteColor,
          borderRadius: BorderRadius.all(Radius.circular(10.r))
      ),

      child: Column(
        children: [
          ClipRRect(

            child: Image.asset('assets/images/chicken _dish_image.jpg',fit: BoxFit.cover,height: 130.h,),
            borderRadius: BorderRadius.only(topLeft: Radius.circular(10.r,),topRight:  Radius.circular(10.r,)),
          ),
          SizedBox(height: 4.h,),

          Expanded(
              child: Column(
                children: [
                  Text('Chiken Dish',style: myStyleInter(12.sp, AppColorResources.subBlackColor,FontWeight.w400),),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('\$2000', style: TextStyle(color:AppColorResources.subBlackColor, fontSize: 12, fontWeight: FontWeight.w600),),
                      const SizedBox(width: 8,),
                      const Icon(Icons.star, color: Colors.amberAccent, size: 14,),
                      Text('4.8', style: const TextStyle(color: Colors.grey, fontSize: 12, fontWeight: FontWeight.w400),),
                      const SizedBox(width: 8,),

                      GestureDetector(
                        onTap: () {},
                        child: Container(
                          padding: const EdgeInsets.all(4),
                          decoration: BoxDecoration(color: AppColorResources.primaryPinkColor, borderRadius: BorderRadius.circular(4)),
                          child: const Icon(Icons.favorite_border, size: 10, color: Colors.white,),),),
                    ],
                  ),

                ],

              )

          ),


        ],
      ),


    );
  }
}