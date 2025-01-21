import 'package:chatbox/controllers/chat_controller.dart';
import 'package:chatbox/core/constants/color.dart';
import 'package:chatbox/data/datasource/model/messagemodel.dart';
import 'package:chatbox/widget/chat/chatbottombar.dart';
import 'package:chatbox/widget/chat/chatdateheader.dart';
import 'package:chatbox/widget/chat/chatmessage.dart';
import 'package:chatbox/widget/chat/chattopbar.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:grouped_list/grouped_list.dart';

class ChatPage extends StatelessWidget {
  const ChatPage({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(ChatController());
    return Scaffold(
      resizeToAvoidBottomInset: true,
      backgroundColor: AppColor.myBackground,
      bottomNavigationBar: const ChatBottomAppBar(),
      body: SafeArea(
        child: Column(
          children: [
            const ChatTopBar(),
            Expanded(
              child: GetBuilder<ChatController>(
                builder: (controller) => GroupedListView<MessageModel, DateTime>(
                  reverse: true,
                  order: GroupedListOrder.DESC,
                  controller: controller.scrollController,
                  useStickyGroupSeparators: controller.isScrolling,
                  floatingHeader: controller.isScrolling,
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  elements: controller.messages,
                  groupBy: (message) => DateTime(message.date.year, message.date.month, message.date.day),
                  groupHeaderBuilder: (MessageModel message) => ChatDateHeader(date: message.date),
                  itemBuilder: (context, MessageModel message) => ChatMessage(message: message),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
