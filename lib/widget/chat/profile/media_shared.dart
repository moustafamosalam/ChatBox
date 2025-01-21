import 'package:chatbox/core/constants/imageassets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MediaShared extends StatelessWidget {
  const MediaShared({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          margin: EdgeInsets.only(bottom: 35.h),
          width: 100.w, height: 100.h,
          decoration: const BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(25)),
            image: DecorationImage(image: AssetImage(AppImageAsset.image1), fit: BoxFit.fitHeight)
          )
        ),
        const SizedBox(width: 20,),
        Container(
          margin: EdgeInsets.only(bottom: 35.h),
          width: 100.w, height: 100.h,
          decoration: const BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(25)),
            image: DecorationImage(image: AssetImage(AppImageAsset.image2), fit: BoxFit.fitHeight)
          )
        ),
        const SizedBox(width: 20,),
        Container(
          margin: EdgeInsets.only(bottom: 35.h),
          width: 100.w, height: 100.h,
          decoration: const BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(25)),
            image: DecorationImage(image: AssetImage(AppImageAsset.image3), fit: BoxFit.fitHeight)
          ),
          child: Container(
            width: 100.w, // Match the width of the underlying container
            height: 100.h, // Match the height of the underlying container
            decoration: BoxDecoration(
              color: Colors.black.withOpacity(0.5), // Black color with opacity
              borderRadius: const BorderRadius.all(Radius.circular(25)), // Same border radius
            ),
            child: Center(child: Text("255+", style: TextStyle(color: Colors.white, fontSize: 17.sp, fontFamily: "Circular", fontWeight: FontWeight.w300),)),
          ),
        ),
      ],
    );
  }
}
