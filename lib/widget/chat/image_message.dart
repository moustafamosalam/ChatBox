import 'package:chatbox/core/constants/imageassets.dart';
import 'package:chatbox/data/datasource/model/messagemodel.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ImageMessage extends StatelessWidget {
  final MessageModel message;
  final double screenWidth;
  const ImageMessage({super.key, required this.message, required this.screenWidth});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: screenWidth*0.5,
      height: 170,
      decoration: BoxDecoration(
        shape: BoxShape.rectangle,
        borderRadius: BorderRadius.only(
          topRight: Radius.circular(10.r),
          topLeft: message.isSentByMe ? Radius.circular(10.r) : Radius.zero,
          bottomLeft: Radius.circular(10.r),
          bottomRight: message.isSentByMe? Radius.zero : Radius.circular(10.r),
        ),
        image: const DecorationImage(image: AssetImage(AppImageAsset.image2), fit: BoxFit.fitHeight),
      ),
    );
  }
}
