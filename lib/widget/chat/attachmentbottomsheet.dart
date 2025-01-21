import 'package:chatbox/controllers/chat_controller.dart';
import 'package:chatbox/core/constants/color.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AttachmentBottomSheet extends StatelessWidget {
  final ChatController controller;
  const AttachmentBottomSheet({super.key, required this.controller});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 575.h,
      padding: EdgeInsets.all(24.r),
      child: Column(
        children: [
          Row(
            children: [
              const Align(alignment: Alignment.centerLeft, child: Icon(Icons.close) ),
              Expanded(
                child: Align(
                  alignment: Alignment.center,
                  child: Text("Share Content", style: TextStyle(fontSize: 16.sp, fontWeight: FontWeight.w500),),
                ),
              )
            ],
          ),
          SizedBox(height: 20.h,),
          Expanded(
            child: ListView.separated(
              separatorBuilder: (BuildContext context, index) => Divider(thickness: 0, indent: 76.w, color: Colors.grey.withOpacity(0.2),),
              itemBuilder: (BuildContext context, index) => ListTile(
                leading: CircleAvatar(
                  radius: 24.r,
                  backgroundColor: AppColor.attachmentBackground,
                  child: Icon(controller.attachmentList[index]["icons"], size: 24.r, color: AppColor.subtitleColor2,),
                ),
                title: Text(controller.attachmentList[index]["title"], style: const TextStyle(fontWeight: FontWeight.bold),),
                subtitle: controller.attachmentList[index]["subtitle"] !=null ?
                  Text(controller.attachmentList[index]["subtitle"], style: TextStyle(fontFamily: "Circular", fontWeight: FontWeight.w400, fontSize: 12.sp, color: AppColor.subtitleColor2),)
                 :null,
              ),
              itemCount: controller.attachmentList.length
            ),
          ),
        ],
      ),
    );
  }
}
