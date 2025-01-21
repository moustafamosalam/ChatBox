import 'package:chatbox/core/constants/color.dart';
import 'package:chatbox/data/datasource/model/messagemodel.dart';
import 'package:chatbox/widget/chat/messagecontent.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:intl/intl.dart';

class ChatMessage extends StatelessWidget {
  final MessageModel message;
  const ChatMessage({super.key, required this.message});

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: message.isSentByMe?
      Alignment.centerRight : Alignment.centerLeft,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          MessageContent(message: message),
          Padding(
            padding: EdgeInsets.only(right: 8.w),
            child: Text(DateFormat('h:mm a').format(message.date), style: TextStyle(fontSize: 10.sp, color: AppColor.subtitleColor2),),
          )
        ],
      ),
    );
  }
}
