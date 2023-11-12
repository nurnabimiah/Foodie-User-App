



import 'package:foodie_resturent_user_app/utils/app_const_file.dart';

class ProductNotificationModel{

  int? id;
  String? image;
  String? notificationTitle;
  String? notificationSubTitle;
  String? dayWeekMonth;
  String? time;

  ProductNotificationModel(
      {required this.id,
      required this.image,
      required this.notificationTitle,
      required this.notificationSubTitle,
      required this.dayWeekMonth,
      required this.time}
      );
}


List<ProductNotificationModel> productnotificationList = [

  //................today notification..........................
  ProductNotificationModel(
      id: 1,
      image:'https://nutritionaustralia.org/app/uploads/2021/08/shutterstock_623425481.jpg',
      notificationTitle: AppConstFile.notificationTitle,
      notificationSubTitle:AppConstFile.notificationSubtitle,
      dayWeekMonth:'Today',
      time: '20 min ago'
  ),

  ProductNotificationModel(
      id: 1,
      image:'https://nutritionaustralia.org/app/uploads/2021/08/shutterstock_623425481.jpg',
      notificationTitle: AppConstFile.notificationTitle,
      notificationSubTitle:AppConstFile.notificationSubtitle,
      dayWeekMonth:'Today',
      time: '16 min ago'
  ),

  //.............this week......................................
  ProductNotificationModel(
      id: 1,
      image:'https://nutritionaustralia.org/app/uploads/2021/08/shutterstock_623425481.jpg',
      notificationTitle: AppConstFile.notificationTitle,
      notificationSubTitle:AppConstFile.notificationSubtitle,
      dayWeekMonth:'This week',
      time: '05/11/23'
  ),

  ProductNotificationModel(
      id: 1,
      image:'https://nutritionaustralia.org/app/uploads/2021/08/shutterstock_623425481.jpg',
      notificationTitle: AppConstFile.notificationTitle,
      notificationSubTitle:AppConstFile.notificationSubtitle,
      dayWeekMonth:'This week',
      time: '04/11/23'
  ),

  ProductNotificationModel(
      id: 1,
      image:'https://nutritionaustralia.org/app/uploads/2021/08/shutterstock_623425481.jpg',
      notificationTitle: AppConstFile.notificationTitle,
      notificationSubTitle:AppConstFile.notificationSubtitle,
      dayWeekMonth:'This week',
      time: '02/11/23'
  ),


  //.............month 2023 notification......................................
  ProductNotificationModel(
      id: 1,
      image:'https://nutritionaustralia.org/app/uploads/2021/08/shutterstock_623425481.jpg',
      notificationTitle: AppConstFile.notificationTitle,
      notificationSubTitle:AppConstFile.notificationSubtitle,
      dayWeekMonth:'This week',
      time: 'November 2023'
  ),
  ProductNotificationModel(
      id: 1,
      image:'https://nutritionaustralia.org/app/uploads/2021/08/shutterstock_623425481.jpg',
      notificationTitle: AppConstFile.notificationTitle,
      notificationSubTitle:AppConstFile.notificationSubtitle,
      dayWeekMonth:'This week',
      time: 'November 2023'
  ),

];