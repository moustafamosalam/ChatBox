import 'package:chatbox/controllers/auth/login_controller.dart';
import 'package:chatbox/core/constants/color.dart';
import 'package:chatbox/core/shared/custombutton.dart';
import 'package:chatbox/screen/auth/authtextformfield.dart';
import 'package:chatbox/widget/customdivider.dart';
import 'package:chatbox/widget/socialmediabutton.dart';
import 'package:enefty_icons/enefty_icons.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    LoginController loginController = Get.put(LoginController());
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
                    bottom: 1.h,
                    child: Container(
                      color: AppColor.strokeColor,
                      height: 8.h,
                      width: 56.w,
                    )
                  ),
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 1.w),
                    child: Text("Log in to Chatbox", style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontFamily: "Caros",
                      fontSize: 18.sp
                    ),),
                  ),
                ],
              ),
              SizedBox(height: 16.h,),
              Text(
                "Welcome back! Sign in using your social",
                style: TextStyle(fontFamily: "Circular", fontSize: 14.sp, color: AppColor.subtitleColor2),
              ),
              Text(
                "account or email to continue us",
                style: TextStyle(fontFamily: "Circular", fontSize: 14.sp, color: AppColor.subtitleColor2),
              ),
              SizedBox(height: 30.h,),
              const SocialMediaRow(borderColor: Colors.black,),
              SizedBox(height: 30.h,),
              const CustomDivider(textColor: AppColor.subtitleColor2, dividerColor: Color(0xFFCDD1D0),),
              SizedBox(height: 30.h,),
              AuthTextFormFiled(text: "Your email", textController: loginController.emailController, obscure: false),
              SizedBox(height: 30.h,),
              AuthTextFormFiled(text: "Password", textController: loginController.passwordController, obscure: true),
              const Spacer(),
              CustomButton(onTap:(){ loginController.goToHomePage(); }, text: "Log in", backgroundColor: AppColor.primaryColor, textColor: Colors.white,),
              SizedBox(height: 13.h,),
              Text(
                "Forget password?",
                style: TextStyle(fontFamily: "Circular", fontSize: 14.sp, color: AppColor.primaryColor, fontWeight: FontWeight.w500),
              ),
              SizedBox(height: 40.h,)
            ],
          ),
        ),
      ),
    );
  }
}
