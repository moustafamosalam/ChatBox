import 'package:chatbox/controllers/chat_controller.dart';
import 'package:chatbox/core/constants/color.dart';
import 'package:chatbox/widget/chat/attachmentbottomsheet.dart';
import 'package:enefty_icons/enefty_icons.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class ChatBottomAppBar extends GetView<ChatController> {
  const ChatBottomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      height: 97.h,
      child: Row(
        children: [
          Transform.rotate(
              angle: -0.8,
              child: GestureDetector(
                onTap: (){ showModalBottomSheet(backgroundColor: Colors.white, isScrollControlled: true, context: context, builder: (c)=> AttachmentBottomSheet(controller: controller,) ); },
                child: Icon(Icons.attachment_outlined, size: 27.r, color: AppColor.blackBackground,))),
          SizedBox(width: 11.w,),
          Expanded(
            child: TextFormField(
              controller: controller.myMessageController,
              decoration: const InputDecoration(
                  floatingLabelBehavior: FloatingLabelBehavior.never,
                  labelText: "Write your message",
                  labelStyle: TextStyle(color: AppColor.subtitleColor2, fontFamily: "Circular"),
                  suffixIcon: Icon(EneftyIcons.sticker_outline, color: AppColor.subtitleColor2,),
                  fillColor: AppColor.textFieldColor,
                  filled: true,
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(18)),
                      borderSide: BorderSide.none
                  )
              ),
            ),
          ),
          SizedBox(width: 16.w,),
          GetBuilder<ChatController>(
              builder: (myController) =>
                myController.textEmpty ?
                  Row(
                    children: [
                      Icon(EneftyIcons.camera_outline, size: 27.r, color: AppColor.blackBackground,),
                      SizedBox(width: 12.w,),
                      Icon(CupertinoIcons.mic, size: 27.r, color: AppColor.blackBackground,)
                    ],
                  )
                 :Container(
                    width: 40.w,
                    height: 40.h,
                    decoration: const BoxDecoration(shape: BoxShape.circle, color: AppColor.chatPrimaryColor ),
                    child: Icon(EneftyIcons.send_3_bold, size: 24.r, color: Colors.white,))
          )
        ],
      ),
    );
  }
}
