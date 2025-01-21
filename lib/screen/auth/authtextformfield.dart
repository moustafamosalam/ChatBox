import 'package:chatbox/core/constants/color.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AuthTextFormFiled extends StatelessWidget {
  final String text;
  final TextEditingController textController;
  final bool obscure;
  final String? Function(String?)? validator;
  const AuthTextFormFiled({super.key, required this.text, required this.textController, required this.obscure, this.validator});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(text, style: TextStyle(fontSize: 14.sp, fontFamily: "Circular", color: AppColor.primaryColor, fontWeight: FontWeight.w500, height: 0.5),),
        Align(
            alignment: AlignmentDirectional.bottomEnd,
            child: TextFormField(
              validator: validator,
              decoration: const InputDecoration(
                enabledBorder: UnderlineInputBorder(
                  borderSide: BorderSide(
                    color: Color(0xFFCDD1D0),
                  ),
                ),
            ),
              style: TextStyle(fontFamily: "Caros", fontSize: 16.sp),
              obscureText: obscure,
              obscuringCharacter: '*',
            )
        )
      ],
    );
  }
}
