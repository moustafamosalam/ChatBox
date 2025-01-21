import 'package:chatbox/controllers/auth/signup_controller.dart';
import 'package:chatbox/core/constants/color.dart';
import 'package:chatbox/core/functions/validinput.dart';
import 'package:chatbox/core/shared/custombutton.dart';
import 'package:chatbox/screen/auth/authtextformfield.dart';
import 'package:enefty_icons/enefty_icons.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class SignUpPage extends StatelessWidget {
  const SignUpPage({super.key});

  @override
  Widget build(BuildContext context) {
    SignUpController signUpController = Get.put(SignUpController());
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: AppColor.myBackground,
      body: SafeArea(
        child: Container(
          width: double.infinity,
          padding: EdgeInsets.only(left: 24.w, right: 24.w, top: 17.h),
          child: Column(
            children: [
              const Align(alignment: AlignmentDirectional.topStart ,child: Icon(EneftyIcons.arrow_left_4_outline)),
              SizedBox(height: 60.h,),
              Stack(
                children: [
                  Positioned(
                      bottom: 3.h,
                      right: 0,
                      child: Container(
                        color: AppColor.strokeColor,
                        height: 8.h,
                        width: 56.w,
                      )
                  ),
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 1.w),
                    child: Text("Sign up with Email", style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontFamily: "Caros",
                        fontSize: 18.sp
                    ),),
                  ),
                ],
              ),
              SizedBox(height: 16.h,),
              Text(
                "Get chatting with friends and family today by",
                style: TextStyle(fontFamily: "Circular", fontSize: 14.sp, color: AppColor.subtitleColor2),
              ),
              Text(
                "signing up for our chat app!",
                style: TextStyle(fontFamily: "Circular", fontSize: 14.sp, color: AppColor.subtitleColor2),
              ),
              SizedBox(height: 60.h,),
              Form(
                key: signUpController.formKey,
                child: Column(
                  children: [
                    AuthTextFormFiled(text: "Your name", textController: signUpController.nameController, obscure: false, validator: (val){ return validInput(val!, 4, 20, "username"); },),
                    SizedBox(height: 30.h,),
                    AuthTextFormFiled(text: "Your email", textController: signUpController.emailController, obscure: false),
                    SizedBox(height: 30.h,),
                    AuthTextFormFiled(text: "Password", textController: signUpController.passwordController, obscure: true),
                    SizedBox(height: 30.h,),
                    AuthTextFormFiled(text: "Confirm Password", textController: signUpController.confirmPasswordController, obscure: true),
                  ],
                )
              ),
              const Spacer(),
              CustomButton(text: "Create account", backgroundColor: AppColor.primaryColor, textColor: Colors.white, onTap: signUpController.createAccount,),
              SizedBox(height: 40.h,)
            ],
          ),
        ),
      ),
    );
  }
}
