import 'package:chatbox/core/constants/imageassets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';


class SocialMediaRow extends StatelessWidget {
  final Color borderColor;
  const SocialMediaRow({super.key, required this.borderColor});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SocialMediaButton(asset: AppImageAsset.facebook, borderColor: borderColor),
        SocialMediaButton(asset: AppImageAsset.google, borderColor: borderColor),
        SocialMediaButton(asset: borderColor == Colors.black ? AppImageAsset.apple2 : AppImageAsset.apple, borderColor: borderColor)
      ],
    );
  }
}



class SocialMediaButton extends StatelessWidget {
  final String asset;
  final void Function()? onTap;
  final Color borderColor;
  const SocialMediaButton({super.key, required this.asset, this.onTap, required this.borderColor});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Padding(
        padding: EdgeInsets.only(right: 20.0.w),
        child: Container(
          width: 48.w,
          height: 48.h,
          padding: EdgeInsets.all(10.0.r),
          decoration: BoxDecoration(
              color: Colors.transparent,
              shape: BoxShape.circle,
              border: Border.all(color: borderColor, width: 0.8.w)
          ),
          child: Image.asset(asset),
        ),
      ),
    );
  }
}
