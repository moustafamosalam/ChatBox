import 'package:chatbox/core/class/call_type.dart';
import 'package:chatbox/data/datasource/model/calls_model.dart';
import 'package:enefty_icons/enefty_icons.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../core/constants/color.dart';

class CallTile extends StatelessWidget {
  final CallsModel callInfo;
  const CallTile({super.key, required this.callInfo});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          width: 52.w, height: 52.h,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            image: DecorationImage(image: AssetImage(callInfo.image), fit: BoxFit.fitHeight)
        )),
        SizedBox(width: 12.w,),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(callInfo.name, style: TextStyle(fontFamily: "Caros", fontSize: 20.sp, fontWeight: FontWeight.w500, height: 1.2),),
            Row(

              children: [
                Icon(
                  callInfo.callType == CallType.incoming ?
                    EneftyIcons.call_incoming_outline
                 :callInfo.callType == CallType.outgoing ?
                    EneftyIcons.call_outgoing_outline
                 :  EneftyIcons.call_remove_outline,
                  size: 17.sp,
                  color:
                    callInfo.callType == CallType.incoming ?
                      AppColor.incomingCall
                   :callInfo.callType == CallType.outgoing ?
                      AppColor.outgoingCall
                   :  AppColor.canceledCall,
                ),
                Text(callInfo.time, style: TextStyle(color: AppColor.subtitleColor2, fontFamily: "Circular", fontSize: 12.sp, fontWeight: FontWeight.w600, height: 1, overflow: TextOverflow.ellipsis),),
              ],
            ),
          ],
        ),
        const Spacer(),
        const Icon(EneftyIcons.call_calling_outline, color: AppColor.subtitleColor2),
        SizedBox(width: 16.w),
        const Icon(EneftyIcons.video_outline, color: AppColor.subtitleColor2),
      ],
    );
  }
}
