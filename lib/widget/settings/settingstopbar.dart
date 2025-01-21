import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SettingsTopBar extends StatelessWidget {
  const SettingsTopBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 17.h),
      height: 44.h,
      child: Align(
        alignment: Alignment.center,
          child: Text("Settings", style: TextStyle(color: Colors.white, fontFamily: "Caros", fontSize: 20.sp, fontWeight: FontWeight.w500),)),
    );
  }
}
