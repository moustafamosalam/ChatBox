import 'package:chatbox/controllers/home_controller.dart';
import 'package:chatbox/core/constants/color.dart';
import 'package:chatbox/widget/home/bottomappbar.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    Get.put(HomeController());
    return Scaffold(
      backgroundColor: AppColor.blackBackground,
      bottomNavigationBar: SizedBox(
        height: screenHeight * 0.112,
        child: const HomeBottomAppBar(),
      ),
      body: GetBuilder<HomeController>(
        builder: (homeController)=> homeController.pages[homeController.page]),
    );
  }
}
