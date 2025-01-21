import 'package:chatbox/controllers/welcome_controller.dart';
import 'package:chatbox/core/constants/color.dart';
import 'package:chatbox/core/shared/custombutton.dart';
import 'package:chatbox/widget/customdivider.dart';
import 'package:chatbox/widget/socialmediabutton.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    WelcomeController welcomeController = Get.put(WelcomeController());
    return Scaffold(
      body: SingleChildScrollView(
        physics: const ClampingScrollPhysics(),
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 24),
          width: double.infinity,
          height: 926,
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage("assets/images/background.png"),
              fit: BoxFit.cover,
            ),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Spacer(),
              RichText(text: TextSpan(
                  style: TextStyle(fontSize: 68.sp, fontFamily: "Caros"),
                  text: "Connect friends ",
                  children: const <TextSpan>[
                    TextSpan(text: "easily & quickly", style: TextStyle(fontWeight: FontWeight.bold))
                  ]
              ),),
              SizedBox(height: 16.h,),
              Text(
                "Our chat app is the perfect way to stay connected with friends and family.",
                style: TextStyle(color: AppColor.subtitleColor, fontFamily: "Circular", fontSize: 16.sp),
              ),
              SizedBox(height: 38.h,),
              const SocialMediaRow(borderColor: Colors.white),
              SizedBox(height: 30.h,),
              const CustomDivider(textColor: AppColor.subtitleColor, dividerColor: AppColor.subtitleColor,),
              SizedBox(height: 30.h,),
              CustomButton(text: "Sign Up within mail", onTap: (){ welcomeController.goToSignUpPage(); }, backgroundColor: AppColor.sharedButtonColor,),
              SizedBox(height: 46.h,),
              RichText(text: TextSpan(
                  style: TextStyle(fontSize: 14.sp, fontFamily: "Circular", color: AppColor.subtitleColor),
                  text: "Existing account? ",
                  children: <TextSpan>[
                    TextSpan(
                      recognizer: TapGestureRecognizer()..onTap = () {
                        welcomeController.goToLoginPage();
                      },
                      text: "Log in",
                      style: const TextStyle(fontWeight: FontWeight.bold, color: Colors.white))
                  ]
              ),),
              SizedBox(height: 40.h,),
            ],
          ),
        ),
      ),
    );
  }
}