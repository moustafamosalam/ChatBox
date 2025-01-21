import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomButton extends StatelessWidget {
  final String text;
  final void Function()? onTap;
  final Color backgroundColor;
  final Color? textColor;
  const CustomButton({super.key, required this.text, this.onTap, required this.backgroundColor, this.textColor});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: 48.h,
        width: double.infinity,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(16.r)),
            color: backgroundColor
        ),
        child: Center(child: Text(text, style: TextStyle(fontFamily: "Caros", fontSize: 16.sp, fontWeight: FontWeight.w500, color: textColor),)),
      ),
    );
  }
}
