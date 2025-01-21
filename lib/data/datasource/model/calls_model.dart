import 'package:chatbox/core/class/call_type.dart';

class CallsModel {

  final String name;
  final String image;
  final CallType callType;
  final String time;

  const CallsModel({
    required this.name,
    required this.image,
    required this.callType,
    required this.time,
  });

}