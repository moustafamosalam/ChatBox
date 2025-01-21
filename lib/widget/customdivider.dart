import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomDivider extends StatelessWidget {
  final Color textColor;
  final Color dividerColor;
  const CustomDivider({super.key, required this.textColor, required this.dividerColor});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(child: Padding(
          padding: EdgeInsets.only(left: 6.0.w, right: 20.w),
          child: Divider(color: dividerColor),
        )),
        Text("OR", style: TextStyle(color: textColor, fontFamily: "Circular", fontSize: 14.sp),),
        Expanded(child: Padding(
          padding: EdgeInsets.only(right: 6.w, left: 20.w),
          child: Divider(color: dividerColor),
        )),
      ],
    );
  }
}
