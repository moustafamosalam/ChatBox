import 'package:chatbox/controllers/home_controller.dart';
import 'package:chatbox/core/constants/color.dart';
import 'package:enefty_icons/enefty_icons.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeBottomAppBar extends StatelessWidget {
  const HomeBottomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    return GetBuilder<HomeController>(
      builder: (homeController)=> BottomNavigationBar(
        selectedFontSize: 0.04*screenWidth,
        unselectedFontSize: 0.04*screenWidth,
        iconSize: 0.065*screenWidth,
        selectedItemColor: AppColor.primaryColor,
        type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.white,
        currentIndex: homeController.page,
        onTap: (index) { homeController.changePage(index); },
        items: const [
          BottomNavigationBarItem(icon: Icon(EneftyIcons.messages_outline), label: "Message"),
          BottomNavigationBarItem(icon: Icon(EneftyIcons.call_calling_outline), label: "Calls"),
          BottomNavigationBarItem(icon: Icon(EneftyIcons.profile_circle_outline), label: "Contacts"),
          BottomNavigationBarItem(icon: Icon(EneftyIcons.setting_2_outline), label: "Settings"),
        ],
      )
    );
  }
}
