import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DraggableStroke extends StatelessWidget {
  const DraggableStroke({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        width: 30.w,
        height: 3.h,
        margin: EdgeInsets.only(bottom: 24.h),
        decoration: const BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(100)),
            color: Color(0xFFE6E6E6)
        ),
      ),
    );
  }
}
