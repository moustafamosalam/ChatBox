import 'package:enefty_icons/enefty_icons.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CallsTopAppBar extends StatelessWidget {
  const CallsTopAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 24.0, right: 24.0, top: 18),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            width: 44.w,
            height: 44.h,
            decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(color: const Color(0xFF363F3B), width: 0.8.w)
            ),
            child: const Icon(EneftyIcons.search_normal_2_outline, color: Colors.white,),
          ),
          Text("Calls", style: TextStyle(color: Colors.white, fontFamily: "Caros", fontSize: 20.sp, fontWeight: FontWeight.w500),),
          Container(
            width: 44.w,
            height: 44.h,
            decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(color: const Color(0xFF363F3B), width: 0.8.w)
            ),
            child: const Icon(EneftyIcons.call_add_outline, color: Colors.white,),
          ),
        ],
      ),
    );
  }
}
