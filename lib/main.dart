// import 'package:flutter/material.dart';
// import 'package:foodie_resturent_user_app/view/screen/onboarding_screen/onboarding_screen.dart';
//
// void main() {
//   runApp(const MyApp());
// }
//
// class MyApp extends StatelessWidget {
//   const MyApp({super.key});
//
//   // This widget is the root of your application.
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Flutter Demo',
//       debugShowCheckedModeBanner: false,
//       theme: ThemeData(
//         colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
//         useMaterial3: true,
//       ),
//       home: OnbordingScreen(),
//     );
//   }
// }
//


import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:foodie_resturent_user_app/view/screen/onboarding_screen/onboarding_screen.dart';
import 'package:foodie_resturent_user_app/view/screen/splash_screen/splash_screen.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'di_container.dart' as di;

var storage;
void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await di.init();
  runApp(
    const MyApp(),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {

    // SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
    //   statusBarColor: AppColorResources.appBarColor,
    // ));

    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);



    return ScreenUtilInit(
        designSize: const Size(360, 800),
        minTextAdapt: true,
        splitScreenMode: true,
        builder: (context, child) {
          return GetMaterialApp(
            debugShowCheckedModeBanner: false,
            title: 'Food App',

            theme: ThemeData(
              useMaterial3: true,
              primarySwatch: Colors.red,
            ),
            initialRoute: OnbordingScreen.routeName,
            getPages: [
              GetPage(name: SplashScreen.routeName, page: () => SplashScreen()),
              GetPage(name:OnbordingScreen.routeName, page: () => OnbordingScreen()),
            ],
          );
        });
  }
}