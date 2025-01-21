import 'package:chatbox/controllers/home_controller.dart';
import 'package:chatbox/widget/home/chatslist.dart';
import 'package:chatbox/widget/home/stories.dart';
import 'package:chatbox/widget/home/topappbar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class ChatsPage extends StatelessWidget {
  // final HomeController homeController;
  const ChatsPage({super.key});

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    HomeController homeController = Get.find();
    return SafeArea(
      child: Stack(
        children: [
          Column(
            children: [
              const HomeTopAppBar(),
              SizedBox(height: 0.045*screenHeight,),
              const StoriesList(),
            ]
          ),
          DraggableScrollableSheet(
              initialChildSize: 0.6835,
              maxChildSize: 0.87,
              minChildSize: 0.6835,
              builder: (context, controller) => Container(
                padding: EdgeInsets.only(top: 14.h),
                width: double.infinity,
                decoration: const BoxDecoration(
                    borderRadius: BorderRadius.only(topLeft: Radius.circular(40), topRight: Radius.circular(40)),
                    color: Colors.white
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      width: 30.w,
                      height: 3.h,
                      margin: EdgeInsets.only(bottom: 24.h),
                      decoration: const BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(100)),
                          color: Color(0xFFE6E6E6)
                      ),
                    ),
                    ChatsList(controller: controller, homeController: homeController)
                  ],
                ),
              )
          )
        ],
      ),
    );
  }
}
