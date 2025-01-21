import 'package:chatbox/core/constants/routes.dart';
import 'package:chatbox/screen/auth/login_page.dart';
import 'package:chatbox/screen/auth/signup.dart';
import 'package:chatbox/screen/chat/chat.dart';
import 'package:chatbox/screen/chat/chatprofile.dart';
import 'package:chatbox/screen/splash_screen.dart';
import 'package:chatbox/screen/welcome_screen.dart';
import 'package:get/get.dart';

import 'screen/home.dart';

List<GetPage<dynamic>>? routes = [
  //Splash Screen
  GetPage(name: AppRoute.splashScreen, page: () => const SplashScreen()),
  GetPage(name: AppRoute.welcomeScreen, page: () => const WelcomeScreen(), transition: Transition.fadeIn ),

  // Auth
  GetPage(name: AppRoute.login, page: () => const LoginPage()),
  GetPage(name: AppRoute.signUp, page: () => const SignUpPage()),

  GetPage(name: AppRoute.homePage, page: () => const HomePage()),
  GetPage(name: AppRoute.chatPage, page: () => const ChatPage()),
  GetPage(name: AppRoute.chatProfile, page: () => const ChatProfile()),


  //Cart
  // GetPage(name: AppRoute.myCart, page: () => const Cart()),
];

