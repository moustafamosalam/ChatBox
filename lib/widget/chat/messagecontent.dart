import 'package:chatbox/core/class/messagetype.dart';
import 'package:chatbox/core/constants/color.dart';
import 'package:chatbox/core/constants/imageassets.dart';
import 'package:chatbox/data/datasource/model/messagemodel.dart';
import 'package:chatbox/widget/chat/image_message.dart';
import 'package:chatbox/widget/chat/voicemessage.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MessageContent extends StatelessWidget {
  final MessageModel message;
  const MessageContent({super.key, required this.message});

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    return Container(
      constraints: BoxConstraints(maxWidth: screenWidth * 0.7),
      child: Card(
        elevation: 2,
        color: message.isSentByMe ? AppColor.chatPrimaryColor : AppColor.chatSecondaryColor,
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
              topRight: Radius.circular(10.r),
              topLeft: message.isSentByMe ? Radius.circular(10.r) : Radius.zero,
              bottomLeft: Radius.circular(10.r),
              bottomRight: message.isSentByMe? Radius.zero : Radius.circular(10.r),
            )
        ),
        child: Padding(
          padding: message.messageType == MessageType.text ?
                       EdgeInsets.all(11.r)
                 : message.messageType == MessageType.voiceMessage ?
                       EdgeInsets.symmetric(horizontal: 8.w)
                 :     EdgeInsets.zero,
          child:   message.messageType == MessageType.text ?
                       Text(message.text, style: TextStyle(color: message.isSentByMe? Colors.white : null, fontWeight: FontWeight.w500),)
                 : message.messageType == MessageType.voiceMessage ?
                       VoiceMessage(isSentByMe: message.isSentByMe,)
                 : message.messageType == MessageType.image ?
                       ImageMessage(message: message, screenWidth: screenWidth)
                 : Container()
        ),
      ),
    );
  }
}
