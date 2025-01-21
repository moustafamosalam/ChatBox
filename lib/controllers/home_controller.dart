import 'package:chatbox/core/constants/routes.dart';
import 'package:chatbox/screen/calls.dart';
import 'package:chatbox/screen/chatspage.dart';
import 'package:chatbox/screen/settingspage.dart';
import 'package:chatbox/screen/splash_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class HomeController extends GetxController{

  int page = 0;

  List<Widget> pages = [
    const ChatsPage(),
    const CallsScreen(),
    const SplashScreen(),
    const SettingsPage()
  ];

  changePage(int index){
    page = index;
    update();
  }

  goToChat(Map chatTitle){
    Get.toNamed(AppRoute.chatPage, arguments: {"chatTitle" : chatTitle});
  }

}