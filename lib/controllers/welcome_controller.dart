import 'package:chatbox/core/constants/routes.dart';
import 'package:get/get.dart';

class WelcomeController extends GetxController{

  goToSignUpPage(){
    Get.toNamed(AppRoute.signUp);
  }

  goToLoginPage(){
    Get.toNamed(AppRoute.login);
  }
}