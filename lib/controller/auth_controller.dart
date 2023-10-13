



import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class AuthController extends GetxController{

  //......login controller .........
  TextEditingController numberController = TextEditingController();
  TextEditingController passwordController = TextEditingController();


  //.....variable declartation.................

  var isLoginPasswordVisible = false.obs;

  loginPasswordVisibility(){
    isLoginPasswordVisible.value = ! isLoginPasswordVisible.value;
    update();
  }








}