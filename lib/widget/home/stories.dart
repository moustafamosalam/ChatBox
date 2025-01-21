import 'package:chatbox/core/constants/color.dart';
import 'package:chatbox/core/constants/imageassets.dart';
import 'package:chatbox/data/datasource/static/chats.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class StoriesList extends StatelessWidget {
  const StoriesList({super.key});

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    return Container(
      padding: const EdgeInsets.only(left: 21.0),
      height: 0.135*screenHeight,
      child: ListView.separated(
        itemCount: chats.length,
        separatorBuilder: (BuildContext context, int index) => SizedBox(width: 13.w,),
        scrollDirection: Axis.horizontal,
        itemBuilder: (BuildContext context, int index) {
          return StoryTemplate(index: index, chatsData: chats[index],);
        },
      ),
    );
  }
}

class StoryTemplate extends StatelessWidget {
  final int index;
  final Map chatsData;
  const StoryTemplate({super.key, required this.index, required this.chatsData});

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    return SizedBox(
      // height: 82.h,
      width: 0.078*screenHeight,
      child: Column(
        children: [
          Stack(
            children: [
              Container(
                padding: const EdgeInsets.all(2.0),
                width: 0.08*screenHeight,
                height: 0.08*screenHeight,
                decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(color: AppColor.primaryColor, width: 1.5.w),
                ),
                child: Container(
                  decoration: BoxDecoration(
                      shape: BoxShape.circle,
                    image: DecorationImage(
                        image: index == 0 ? const AssetImage(AppImageAsset.myPhoto) : AssetImage(chatsData["image"]),
                        fit: BoxFit.cover
                    )
                  ),
                ),
              ),
              if (index == 0)
                Positioned(
                  bottom: 0,
                  right: 0,
                  child: Container(
                    width: 16.w,
                    height:16.h,
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.white,
                        border: Border.all(color: AppColor.blackBackground, width: 1.5)
                    ),
                    child: Icon(Icons.add, size: 13.sp, fill: 1.0,),
                  ),
                )
            ],
          ),
          SizedBox(height: 9.h,),
          Text(
            index == 0? "My status" : chatsData["name"],
            overflow: TextOverflow.ellipsis,
            style: TextStyle(height: 1, color: Colors.white, fontSize: 0.0172*screenHeight, fontFamily: "Caros"),
          )
        ],
      ),
    );
  }
}

