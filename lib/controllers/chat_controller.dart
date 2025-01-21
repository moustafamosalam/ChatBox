import 'dart:async';

import 'package:chatbox/core/class/messagetype.dart';
import 'package:chatbox/data/datasource/model/messagemodel.dart';
import 'package:enefty_icons/enefty_icons.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ChatController extends GetxController{

  ScrollController scrollController = ScrollController();
  late TextEditingController myMessageController = TextEditingController();
  Timer? timer;
  bool isScrolling = false;
  bool textEmpty = true;

  late Map chatTitle;

  void _onScroll() {
    isScrolling = true;
    update();
    if (timer == null || !timer!.isActive) {
      // Start the timer when scrolling begins
      timer = Timer.periodic(const Duration(milliseconds: 1500), (Timer t) {
        isScrolling = false;
        update();
        timer?.cancel();
      });
    }
  }

  void myMessageListener(){
    if(myMessageController.text.isEmpty) {
      textEmpty = true;
      update();
    } else {
      textEmpty = false;
      update();
    }
  }

  @override
  onInit(){
    chatTitle = Get.arguments["chatTitle"];
    myMessageController.addListener(myMessageListener);
    scrollController.addListener(_onScroll);
    super.onInit();
  }

  @override
  void onClose() {
    // Clean up the controller and timers
    scrollController.removeListener(_onScroll);
    timer?.cancel();
    myMessageController.dispose();
    scrollController.dispose();
    super.onClose();
  }

  List<Map<String, String>> chatInfo = [
    {"title": "Display Name", "subtitle" : "Jhon Abraham"},
    {"title": "Email Address", "subtitle" : "jhonabraham20@gmail.com"},
    {"title": "Address", "subtitle" : "33 street west subidbazar,sylhet"},
    {"title": "Phone  Number", "subtitle" : "(320) 555-0104"},
  ];

  List<MessageModel> messages = [
    MessageModel(
        text: "Hi",
        date: DateTime.now().subtract(const Duration(days: 10, hours: 2)),
        messageType: MessageType.text,
        isSentByMe: false
    ),
    MessageModel(
        text: "Hey",
        date: DateTime.now().subtract(const Duration(days: 10, hours: 1)),
        messageType: MessageType.text,
        isSentByMe: true
    ),
    MessageModel(
        text: "Whenever you are free call me :)",
        date: DateTime.now().subtract(const Duration(days: 10, minutes: 30)),
        messageType: MessageType.text,
        isSentByMe: false
    ),
    MessageModel(
        text: "Okay I will.",
        date: DateTime.now().subtract(const Duration(days: 10, minutes: 20)),
        messageType: MessageType.text,
        isSentByMe: true
    ),
    MessageModel(
        text: "I am on my way.",
        date: DateTime.now().subtract(const Duration(hours: 1, minutes: 10)),
        messageType: MessageType.text,
        isSentByMe: true
    ),
    MessageModel(
        text: "Okehh I am ready.",
        date: DateTime.now().subtract(const Duration(hours: 1, minutes: 5)),
        messageType: MessageType.text,
        isSentByMe: false
    ),MessageModel(
        text: "Whenever you are free call me :)",
        date: DateTime.now().subtract(const Duration(days: 10, minutes: 30)),
        messageType: MessageType.text,
        isSentByMe: false
    ),
    MessageModel(
        text: "Okay I will.",
        date: DateTime.now().subtract(const Duration(days: 10, minutes: 20)),
        messageType: MessageType.text,
        isSentByMe: true
    ),
    MessageModel(
        text: "I am on my way.",
        date: DateTime.now().subtract(const Duration(hours: 1, minutes: 10)),
        messageType: MessageType.text,
        isSentByMe: true
    ),
    MessageModel(
        text: "Okehh I am ready.",
        date: DateTime.now().subtract(const Duration(hours: 1, minutes: 5)),
        messageType: MessageType.text,
        isSentByMe: false
    ),MessageModel(
        text: "Whenever you are free call me :)",
        date: DateTime.now().subtract(const Duration(days: 10, minutes: 30)),
        messageType: MessageType.text,
        isSentByMe: false
    ),
    MessageModel(
        text: "Okay I will.",
        date: DateTime.now().subtract(const Duration(days: 10, minutes: 20)),
        messageType: MessageType.text,
        isSentByMe: true
    ),
    MessageModel(
        text: "I am on my way.",
        date: DateTime.now().subtract(const Duration(hours: 1, minutes: 10)),
        messageType: MessageType.text,
        isSentByMe: true
    ),
    MessageModel(
        text: "Okehh I am ready.",
        date: DateTime.now().subtract(const Duration(hours: 1, minutes: 5)),
        messageType: MessageType.text,
        isSentByMe: false
    ),MessageModel(
        text: "Whenever you are free call me :)",
        date: DateTime.now().subtract(const Duration(days: 10, minutes: 30)),
        messageType: MessageType.text,
        isSentByMe: false
    ),
    MessageModel(
        text: "Okay I will.",
        date: DateTime.now().subtract(const Duration(days: 10, minutes: 20)),
        messageType: MessageType.text,
        isSentByMe: true
    ),
    MessageModel(
        text: "I am on my way.",
        date: DateTime.now().subtract(const Duration(hours: 1, minutes: 10)),
        messageType: MessageType.text,
        isSentByMe: true
    ),
    MessageModel(
        text: "Okehh I am ready.",
        date: DateTime.now().subtract(const Duration(hours: 1, minutes: 5)),
        messageType: MessageType.text,
        isSentByMe: false
    ),MessageModel(
        text: "Whenever you are free call me :)",
        date: DateTime.now().subtract(const Duration(days: 10, minutes: 30)),
        messageType: MessageType.text,
        isSentByMe: false
    ),
    MessageModel(
        text: "Okay I will.",
        date: DateTime.now().subtract(const Duration(days: 10, minutes: 20)),
        messageType: MessageType.text,
        isSentByMe: true
    ),
    MessageModel(
        text: "I am on my way.",
        date: DateTime.now().subtract(const Duration(hours: 1, minutes: 10)),
        messageType: MessageType.image,
        isSentByMe: true
    ),
    MessageModel(
        text: "Okehh I am ready.",
        date: DateTime.now().subtract(const Duration(hours: 1, minutes: 5)),
        messageType: MessageType.voiceMessage,
        isSentByMe: false
    ),

  ];

  List<Map<String, dynamic>> attachmentList = [
    {"icons" : CupertinoIcons.camera, "title" : "Camera", "subtitle" : null},
    {"icons" : EneftyIcons.document_text_outline, "title" : "Documents",  "subtitle" : "Share your files"},
    {"icons" : Icons.signal_cellular_alt_outlined, "title" : "Create a poll", "subtitle" : "Create a poll for any querry"},
    {"icons" : CupertinoIcons.photo, "title" : "Media", "subtitle" : "Share photos and videos"},
    {"icons" : Icons.account_circle_outlined, "title" : "Contact", "subtitle" : "Share your contacts"},
    {"icons" : EneftyIcons.location_outline, "title" : "Location", "subtitle" : "Share your location"},

  ];

}