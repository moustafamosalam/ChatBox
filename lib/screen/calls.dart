import 'package:chatbox/core/shared/draggable_stroke.dart';
import 'package:chatbox/widget/calls/calls_list.dart';
import 'package:chatbox/widget/calls/calls_top_app_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CallsScreen extends StatelessWidget {
  const CallsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Stack(
        children: [
          const CallsTopAppBar(),
          DraggableScrollableSheet(
              initialChildSize: 0.83,
              maxChildSize: 0.83,
              minChildSize: 0.83,
              builder: (context, controller) => Container(
                padding: EdgeInsets.only(top: 14.h),
                width: double.infinity,
                decoration: const BoxDecoration(
                    borderRadius: BorderRadius.only(topLeft: Radius.circular(40), topRight: Radius.circular(40)),
                    color: Colors.white
                ),
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 24.w),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const DraggableStroke(),
                      Text("Recent", style: TextStyle(fontSize: 17.sp, fontWeight: FontWeight.w600),),
                      const SizedBox(height: 20,),
                      const CallsList()
                    ],
                  ),
                ),
              )
          )
        ],
      ),
    );
  }
}
