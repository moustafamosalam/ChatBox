import 'package:chatbox/data/datasource/static/chats.dart';
import 'package:chatbox/widget/calls/call_tile.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CallsList extends StatelessWidget {
  const CallsList({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.separated(
        itemCount: calls.length,
        separatorBuilder: (BuildContext context, int index) => SizedBox(height: 35.h,),
        itemBuilder: (BuildContext context, int index) {
          return CallTile(callInfo: calls[index]);
        },
      ),
    );
  }
}
