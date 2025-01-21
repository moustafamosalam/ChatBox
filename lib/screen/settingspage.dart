import 'package:chatbox/core/constants/color.dart';
import 'package:chatbox/core/constants/imageassets.dart';
import 'package:chatbox/widget/settings/settingstopbar.dart';
import 'package:enefty_icons/enefty_icons.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

List<Map<String, dynamic>> attachmentList = [
  {"icons" : Icons.key_outlined, "title" : "Account", "subtitle" : "Privacy, security, change number"},
  {"icons" : EneftyIcons.messages_outline, "title" : "Chat",  "subtitle" : "Chat history, theme, wallpapers"},
  {"icons" : EneftyIcons.notification_outline, "title" : "Notifications", "subtitle" : "Messages, group and others"},
  {"icons" : CupertinoIcons.question_circle, "title" : "Help", "subtitle" : "Help center,contact us, privacy policy"},
  {"icons" : EneftyIcons.arrow_3_outline, "title" : "Storage and data", "subtitle" : "Network usage, stogare usage"},
  {"icons" : EneftyIcons.people_outline, "title" : "Invite a friend", "subtitle" : null},

];

class SettingsPage extends StatelessWidget {
  const SettingsPage({super.key});

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;
    // print(screenHeight);
    // print(screenWidth);
    return SafeArea(
      child: Stack(
        children: [
          const SettingsTopBar(),
          DraggableScrollableSheet(
              initialChildSize: 0.8437,
              maxChildSize: 0.8437,
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
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(
                        width: 30.w,
                        height: 3.h,
                        margin: EdgeInsets.only(bottom: 24.h),
                        decoration: const BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(100)),
                            color: Color(0xFFE6E6E6)
                        ),
                      ),
                      SizedBox(height: 5.h,),
                      Row(
                        children: [
                          ClipOval(
                            child: Image.asset(AppImageAsset.john, width: screenHeight*0.08, height: screenHeight*0.08, fit: BoxFit.fitHeight,),
                          ),
                          SizedBox(width: 12.w,),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("Nazar Qabany", style: TextStyle(fontFamily: "Caros", fontSize: screenWidth*0.044, fontWeight: FontWeight.bold, height: 1),),
                              SizedBox(height: 6.h,),
                              Text("Never Give Up 💪", style: TextStyle(color: AppColor.subtitleColor2, fontFamily: "Circular", fontSize: screenWidth*0.033, fontWeight: FontWeight.w400, height: 1, overflow: TextOverflow.ellipsis),),
                            ],
                          ),
                          const Spacer(),
                          const Icon(CupertinoIcons.qrcode_viewfinder, color: AppColor.primaryColor, size: 30,)
                        ],
                      ),
                      SizedBox(height: screenHeight*0.01,),
                      const Divider(thickness: 1, color: AppColor.textFieldColor,),
                      SizedBox(height: screenHeight*0.01,),
                      Expanded(
                        child: ListView.separated(
                          physics: const BouncingScrollPhysics(),
                          itemCount: attachmentList.length,
                            separatorBuilder: (BuildContext context, index) => SizedBox(height: 30.h,),
                            itemBuilder: (BuildContext context, index) =>
                                Row(
                                  children: [
                                    CircleAvatar(
                                      radius: screenHeight*0.0265625,
                                      backgroundColor: AppColor.attachmentBackground,
                                      child: Icon(attachmentList[index]["icons"], size: screenHeight*0.0265625, color: AppColor.subtitleColor2,),
                                    ),
                                    SizedBox(width: screenWidth*0.0277,),
                                    Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Text(attachmentList[index]["title"], style: TextStyle(fontSize: screenWidth*0.044, height: 1.2, fontWeight: FontWeight.w500),),
                                        attachmentList[index]["subtitle"] != null ?
                                          Text(attachmentList[index]["subtitle"]??="", style: TextStyle(fontFamily: "Circular", fontWeight: FontWeight.w400, fontSize: screenWidth*0.033, color: AppColor.subtitleColor2),)
                                         :const SizedBox()
                                      ],
                                    )
                                  ],
                                ),
                        ),
                      )
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


