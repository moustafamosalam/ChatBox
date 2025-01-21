import 'package:chatbox/core/constants/routes.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class LoginController extends GetxController{

  late TextEditingController emailController;
  late TextEditingController passwordController;


  @override
  void onInit() {
    emailController = TextEditingController();
    passwordController = TextEditingController();
    super.onInit();
  }
  
  goToHomePage() {
    Get.toNamed(AppRoute.homePage);
  }
}