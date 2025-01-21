import 'package:chatbox/core/constants/color.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:voice_message_package/voice_message_package.dart';

class VoiceMessage extends StatelessWidget {
  final bool isSentByMe;
  const VoiceMessage({super.key, required this.isSentByMe});

  @override
  Widget build(BuildContext context) {
    return VoiceMessageView(
      circlesColor: AppColor.voiceMessageColor,
      activeSliderColor: AppColor.blackBackground,
      size: 29.r,
      backgroundColor: isSentByMe ? AppColor.chatPrimaryColor : AppColor.chatSecondaryColor,
      controller: VoiceController(
        maxDuration: const Duration(seconds: 35),
        isFile: false,
        audioSrc:
        'https://dl.solahangs.com/Music/1403/02/H/128/Hiphopologist%20-%20Shakkak%20%28128%29.mp3',
        onComplete: () {
          /// do something on complete
        },
        onPause: () {
          /// do something on pause
        },
        onPlaying: () {
          /// do something on playing
        },
        onError: (err) {
          /// do somethin on error
        },
      ),
      innerPadding: 0,
    );
  }
}
