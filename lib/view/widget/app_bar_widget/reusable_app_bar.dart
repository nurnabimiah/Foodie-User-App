


import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../utils/app_color_resources/app_color_resources.dart';
import '../../../utils/app_style.dart';

class ReusableAppBar extends StatelessWidget {

  ReusableAppBar({Key? key,required this.appBarTitle,this.elevation});
  String appBarTitle;
  double? elevation;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      elevation: elevation,
      backgroundColor: AppColorResources.primaryColor,
      title: Text(appBarTitle, style: myStyleInter(14.sp, AppColorResources.subBlackColor, FontWeight.w700)),
      centerTitle: true,
    );
  }
}