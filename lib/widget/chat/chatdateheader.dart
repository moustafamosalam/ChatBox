import 'package:chatbox/core/constants/color.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:intl/intl.dart';

class ChatDateHeader extends StatelessWidget {
  final DateTime date;
  const ChatDateHeader({super.key, required this.date});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 42.h,
      child: Center(
        child: Card(
          elevation: 0,
          color: AppColor.chatDateColor,
          child: Padding(
            padding: EdgeInsets.all(10.r),
            child: Text(
              DateFormat.yMMMd().format(date),
              style: const TextStyle(height: 1, color: AppColor.blackBackground, fontFamily: "Caros", fontWeight: FontWeight.w500),
            ),
          ),
        ),
      ),
    );
  }
}
