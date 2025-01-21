import 'package:chatbox/core/constants/color.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ProfileInfo extends StatelessWidget {
  final String title;
  final String subtitle;
  const ProfileInfo({super.key, required this.title, required this.subtitle});

  @override
  Widget build(BuildContext context) {
    return RichText(text: TextSpan(
        style: TextStyle(fontSize: 15.sp, fontWeight: FontWeight.w400, color: AppColor.subtitleColor2, fontFamily: "Circular"),
        text: "$title\n ",
        children: <TextSpan>[
          TextSpan(text: subtitle, style: TextStyle(fontSize: 18.sp, fontWeight: FontWeight.w500, color: AppColor.blackBackground,  fontFamily: "Caros", height: 1.5),)
        ]
    ),);
  }
}
