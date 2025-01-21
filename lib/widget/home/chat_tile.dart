import 'package:chatbox/controllers/home_controller.dart';
import 'package:chatbox/core/constants/color.dart';
import 'package:chatbox/widget/home/unreadmessages.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ChatTile extends StatelessWidget {
  final HomeController controller;
  final Map chatData;
  const ChatTile({super.key, required this.controller, required this.chatData});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        controller.goToChat(chatData);
      },
      child: ListTile(
        leading: Stack(
          children: [
            Container(
              width: 52.w, height: 52.h,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                image: DecorationImage(image: AssetImage(chatData["image"]), fit: BoxFit.fitHeight)
              )),
                // child: Image.asset(chatData["image"], width: 52.w, height: 52.h,)),
            Positioned(
              bottom: 2.h,
              right: 5.w,
              child: Container(
                width: 9.w,
                height: 9.h,
                decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: chatData["status"] ? AppColor.greenStatus : AppColor.greyStatus
                ),
              ),
            )
          ],
        ),
        title: Text(chatData["name"], style: TextStyle(fontFamily: "Caros", fontSize: 20.sp, fontWeight: FontWeight.w500, height: 1),),
        subtitle: Text(chatData["subtitle"], style: TextStyle(color: AppColor.subtitleColor2, fontFamily: "Circular", fontSize: 12.sp, fontWeight: FontWeight.w600, height: 1, overflow: TextOverflow.ellipsis),),
        trailing: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Text(chatData["time"], style: TextStyle(color: AppColor.subtitleColor2, fontFamily: "Circular", fontSize: 12.sp, fontWeight: FontWeight.w600, height: 1),),
            if(chatData["unread"] > 0)
              UnReadMessages(number: chatData["unread"])
          ],
        ),
      ),
    );
  }
}
