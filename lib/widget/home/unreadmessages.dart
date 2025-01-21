import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class UnReadMessages extends StatelessWidget {
  final int number;
  const UnReadMessages({super.key, required this.number});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 22.w,
      height: 22.h,
      decoration: const BoxDecoration(
          shape: BoxShape.circle,
          color: Color(0xFFF04A4C)
      ),
      child: Align(alignment: Alignment.center ,child: Text(number.toString(), style: TextStyle(color: Colors.white, fontSize: 11.sp),)),
    );
  }
}
