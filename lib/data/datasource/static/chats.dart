

import 'package:chatbox/core/class/call_type.dart';
import 'package:chatbox/core/constants/imageassets.dart';
import 'package:chatbox/data/datasource/model/calls_model.dart';

List <Map> chats = [
  {"name" : "Alex Linderson", "subtitle" : "How are you today?", "unread" : 4, "time" : "2 min ago", "status" : true, "image" : AppImageAsset.alex},
  {"name" : "John Abraham", "subtitle" : "Hey! Can you join the meeting?", "unread" : 0, "time" : "5 min ago", "status" : false, "image" : AppImageAsset.john},
  {"name" : "Sabila Sayma", "subtitle" : "I miss you ❤", "unread" : 1, "time" : "15 min ago", "status" : true, "image" : AppImageAsset.sabila},
  {"name" : "John Borino", "subtitle" : "Have a nice day 😊", "unread" : 2, "time" : "35 min ago", "status" : false, "image" : AppImageAsset.john2},
  {"name" : "Adil", "subtitle" : "Where are you??", "unread" : 1, "time" : "1 hour ago", "status" : true, "image" : AppImageAsset.adil},
  {"name" : "Mum", "subtitle" : "Call me when you are free", "unread" : 0, "time" : "2 hour ago", "status" : true, "image" : AppImageAsset.mum},
  {"name" : "Dad", "subtitle" : "Cup of tea please :)", "unread" : 1, "time" : "3 hours ago", "status" : false, "image" : AppImageAsset.myPhoto},
  {"name" : "My Love", "subtitle" : "Where is my money????", "unread" : 10, "time" : "5 hours ago", "status" : true, "image" : AppImageAsset.sabila},
  {"name" : "Alex Linderson", "subtitle" : "How are you today?", "unread" : 4, "time" : "2 min ago", "status" : true, "image" : AppImageAsset.alex},
  {"name" : "John Abraham", "subtitle" : "Hey! Can you join the meeting?", "unread" : 0, "time" : "5 min ago", "status" : false, "image" : AppImageAsset.john},
  {"name" : "Sabila Sayma", "subtitle" : "I miss you ❤", "unread" : 1, "time" : "15 min ago", "status" : true, "image" : AppImageAsset.sabila},
  {"name" : "John Borino", "subtitle" : "Have a nice day 😊", "unread" : 2, "time" : "15 min ago", "status" : false, "image" : AppImageAsset.john2},
];

List<CallsModel> calls = const [
  CallsModel(name: "Jhon Abraham", image: AppImageAsset.john2, callType: CallType.incoming, time: "  Today, 09:30 AM"),
  CallsModel(name: "Sabila Sayma", image: AppImageAsset.sabila, callType: CallType.outgoing, time: "  Today, 08:30 AM"),
  CallsModel(name: "Alex Linderson", image: AppImageAsset.alex, callType: CallType.outgoing, time: "  Monday, 06:30 AM"),
  CallsModel(name: "John Borino", image: AppImageAsset.john, callType: CallType.canceled, time: "  Sunday, 09:30 PM"),
  CallsModel(name: "Adil Adnan", image: AppImageAsset.adil, callType: CallType.incoming, time: "  03/09/24, 07:30 AM"),
  CallsModel(name: "Alex Linderson", image: AppImageAsset.alex, callType: CallType.outgoing, time: "  02/09/24, 10:30 AM"),
  CallsModel(name: "John Borino", image: AppImageAsset.john, callType: CallType.canceled, time: "  01/09/24, 11:43 PM"),
  CallsModel(name: "Adil Adnan", image: AppImageAsset.adil, callType: CallType.incoming, time: "  01/09/24, 02:26 AM"),
];