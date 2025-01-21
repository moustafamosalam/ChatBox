import 'package:chatbox/core/constants/color.dart';
import 'package:chatbox/core/constants/imageassets.dart';
import 'package:enefty_icons/enefty_icons.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

List<IconData> icons = [
  EneftyIcons.messages_outline,
  EneftyIcons.video_outline,
  EneftyIcons.call_outline,
  EneftyIcons.more_outline,

];

class TopProfileDetails extends StatelessWidget {
  const TopProfileDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(height: 26.h,),
          Container(
              width: 100.w, height: 100.h,
              decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  image: DecorationImage(image: AssetImage(AppImageAsset.john2), fit: BoxFit.fitHeight)
              )),
          SizedBox(height: 12.h,),
          Text("Jhon Abraham", style: TextStyle(fontSize: 20.sp, fontWeight: FontWeight.bold, color: Colors.white),),
          Text("@jhonabraham", style: TextStyle(fontSize: 12.sp, fontWeight: FontWeight.w400, color: AppColor.subtitleColor2, fontFamily: "Circular"),),
          SizedBox(height: 20.h,),
          SizedBox(
            height: 44.h,
            width: 257.w,
            child: ListView.separated(
              separatorBuilder: (context, index) => SizedBox(width: 25.w,),
              scrollDirection: Axis.horizontal,
              itemCount: 4,
              itemBuilder: (context, index) =>
                  CircleAvatar(
                    radius: 23.r,
                    backgroundColor: const Color(0xFF051D13),
                    child: Icon(icons[index], size: 24, color: Colors.white,),
                  ),
            ),
          ),
        ],
      ),
    );
  }
}
