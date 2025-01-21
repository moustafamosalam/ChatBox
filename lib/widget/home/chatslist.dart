import 'package:chatbox/controllers/home_controller.dart';
import 'package:chatbox/data/datasource/static/chats.dart';
import 'package:chatbox/widget/home/chat_tile.dart';
import 'package:enefty_icons/enefty_icons.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_slidable/flutter_slidable.dart';

class ChatsList extends StatelessWidget {
  final ScrollController controller;
  final HomeController homeController;
  const ChatsList({super.key, required this.controller, required this.homeController});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.separated(
        controller: controller,
        itemCount: chats.length,
        separatorBuilder: (BuildContext context, int index) => SizedBox(height: 15.h,),
        itemBuilder: (BuildContext context, int index) {
          return Slidable(
            endActionPane: ActionPane(
              extentRatio: 0.25,
              motion: const DrawerMotion(),
              children: [
                Flexible(
                  flex: 1,
                  child: Container(
                    margin: EdgeInsets.all(6.h),
                    decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.black
                    ),
                    child: Icon(EneftyIcons.notification_outline, color: Colors.white, size: 22.sp,),
                  ),
                ),
                Flexible(
                  flex: 1,
                  child: Container(
                    margin: EdgeInsets.all(6.h),
                    decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.red
                    ),
                    child: Icon(CupertinoIcons.delete_simple, color: Colors.white, size: 22.sp,),
                  ),
                ),
              ],
            ),
            child: ChatTile(controller: homeController, chatData: chats[index]),
          );
        },
      ),
    );
  }
}
