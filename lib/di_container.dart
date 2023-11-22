import 'package:dio/dio.dart';
import 'package:foodie_resturent_user_app/controller/auth_controller.dart';
import 'package:foodie_resturent_user_app/controller/categories_controller.dart';
import 'package:foodie_resturent_user_app/utils/app_config/app_config_file.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get_it/get_it.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'data/datasource/remote/dio/dio_client.dart';
import 'data/datasource/remote/dio/logging_interceptor.dart';


final sl = GetIt.instance;

Future<void> init() async {

  /// Core
  sl.registerLazySingleton(() => DioClient(AppConfig.baseUri, sl(), loggingInterceptor: sl(), sharedPreferences: sl()));

  ///Repository

  //sl.registerLazySingleton(() => AuthRepo(dioClient: sl(), sharedPreferences: sl()));
 // sl.registerLazySingleton(() => TakeMoneyRepo(dioClient: sl(), sharedPreferences: sl()));




  /// Controller
   Get.lazyPut(() => AuthController(), fenix: true);
   Get.lazyPut(() => CategoriesController(), fenix: true);





  //sl.registerFactory(() => AuthController(authRepo: sl(),dioClient: sl()));


  /// External pocket lock
  final sharedPreferences = await SharedPreferences.getInstance();
  sl.registerLazySingleton(() => sharedPreferences);
  sl.registerLazySingleton(() => Dio());
  sl.registerLazySingleton(() => LoggingInterceptor());
}
