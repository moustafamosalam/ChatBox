import 'package:chatbox/core/class/messagetype.dart';

class MessageModel {

  final String text;
  final DateTime date;
  final MessageType messageType;
  final bool isSentByMe;

  const MessageModel({
    required this.text,
    required this.date,
    required this.messageType,
    required this.isSentByMe,
  });

}