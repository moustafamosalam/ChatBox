import 'package:chatbox/controllers/chat_controller.dart';
import 'package:chatbox/core/constants/color.dart';
import 'package:chatbox/core/shared/draggable_stroke.dart';
import 'package:chatbox/widget/chat/profile/media_shared.dart';
import 'package:chatbox/widget/chat/profile/profile_info.dart';
import 'package:chatbox/widget/chat/profile/top_profile_details.dart';
import 'package:enefty_icons/enefty_icons.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class ChatProfile extends GetView<ChatController> {
  const ChatProfile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.blackBackground,
      body: SafeArea(
        child: Stack(
          children: [
            Padding(
              padding: EdgeInsets.only(top: 17.h, left: 24.w),
              child: const Icon(EneftyIcons.arrow_left_4_outline, color: Colors.white,),
            ),
            const TopProfileDetails(),
            DraggableScrollableSheet(
              initialChildSize: 0.64,
              maxChildSize: 0.64,
              builder: (context, scrollController) =>
                  Container(
                    padding: EdgeInsets.only(top: 14.h),
                    width: double.infinity,
                    decoration: const BoxDecoration(
                        borderRadius: BorderRadius.only(topLeft: Radius.circular(40), topRight: Radius.circular(40)),
                        color: Colors.white
                    ),
                    child: Padding(
                      padding: EdgeInsets.symmetric(horizontal: 24.w),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const DraggableStroke(),
                          Expanded(
                            child: ListView.separated(
                              physics: const ClampingScrollPhysics(),
                              itemCount: 4,
                              separatorBuilder: (context, index) => SizedBox(height: 25.h,),
                              itemBuilder: (context, index) =>
                                  ProfileInfo(title: controller.chatInfo[index]["title"]!, subtitle: controller.chatInfo[index]["subtitle"]!)
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text("Media Shared", style: TextStyle(fontSize: 15.sp, fontWeight: FontWeight.w400, color: AppColor.subtitleColor2, fontFamily: "Circular"),),
                              Text("View All", style: TextStyle(fontSize: 15.sp, fontWeight: FontWeight.bold, color: AppColor.chatPrimaryColor),),
                            ],
                          ),
                          SizedBox(height: 20.h,),
                          const MediaShared()
                        ],
                      ),
                    ),
                  )
            )
          ],
        ),
      ),
    );
  }
}
