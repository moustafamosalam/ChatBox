import 'package:chatbox/controllers/chat_controller.dart';
import 'package:chatbox/core/constants/color.dart';
import 'package:chatbox/core/constants/routes.dart';
import 'package:enefty_icons/enefty_icons.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class ChatTopBar extends GetView<ChatController> {
  const ChatTopBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.only(left: 24.w, right: 24.w, top: 16.h, bottom: 20.h),
        child: Row(
          children: [
            const Icon(EneftyIcons.arrow_left_4_outline),
            Expanded(
              child: GestureDetector(
                onTap: (){
                  Get.toNamed(AppRoute.chatProfile);
                },
                child: ListTile(
                  leading: Stack(
                    children: [
                      Container(
                          width: 44.w, height: 44.h,
                          decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              image: DecorationImage(image: AssetImage(controller.chatTitle["image"]), fit: BoxFit.fitHeight)
                          )),
                      // child: Image.asset(chatData["image"], width: 52.w, height: 52.h,)),
                      Positioned(
                        bottom: 1.h,
                        right: 2.w,
                        child: Container(
                          width: 9.w,
                          height: 9.h,
                          decoration: const BoxDecoration(
                              shape: BoxShape.circle,
                              color: AppColor.greenStatus
                          ),
                        ),
                      )
                    ],
                  ),
                  title: Text(controller.chatTitle["name"], style: TextStyle(fontSize: 16.sp, fontFamily: "Caros", fontWeight: FontWeight.w500, height: 1, overflow: TextOverflow.ellipsis),),
                  subtitle: Text("Active now", style: TextStyle(fontSize: 12.sp, fontFamily: "Circular", fontWeight: FontWeight.w200, height: 1, color: AppColor.subtitleColor2),),
                  trailing: GestureDetector(
                    onTap: (){},
                    child: Icon(EneftyIcons.call_outline, size: 24.sp, color: AppColor.blackBackground,)),
                ),
              ),
            ),
            Icon(EneftyIcons.video_outline, size: 24.r, color: AppColor.blackBackground,),
          ],
        )
    );
  }
}
