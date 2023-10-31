


import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../utils/app_color_resources/app_color_resources.dart';
import '../../../utils/app_style.dart';

class ReusableAppBar extends StatelessWidget {

  ReusableAppBar({Key? key,required this.appBarTitle});
  String appBarTitle;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: AppColorResources.primaryColor,
      title: Text(appBarTitle, style: myStyleInter(14.sp, AppColorResources.subBlackColor, FontWeight.w700)),
      centerTitle: true,
    );
  }
}