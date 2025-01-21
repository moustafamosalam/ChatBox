import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class SignUpController extends GetxController{

  late TextEditingController nameController;
  late TextEditingController emailController;
  late TextEditingController passwordController;
  late TextEditingController confirmPasswordController;

  final formKey = GlobalKey<FormState>();

  @override
  void onInit() {
    nameController            = TextEditingController();
    emailController           = TextEditingController();
    passwordController        = TextEditingController();
    confirmPasswordController = TextEditingController();
    super.onInit();
  }

  createAccount(){
    if (formKey.currentState!.validate()) {
      Get.snackbar("Good", "All good!");
    }
  }

}