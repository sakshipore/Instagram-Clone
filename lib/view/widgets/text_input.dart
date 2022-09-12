import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:instagram_clone/constants/colors.dart';

class TextInput extends StatelessWidget {
  final TextEditingController controller;
  final String labelText;
  final bool toHide;

  TextInput({
    Key? key,
    required this.controller,
    required this.labelText,
    this.toHide = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      obscureText: toHide,
      decoration: InputDecoration(
        labelText: labelText,
        filled: true,
        fillColor: AppColors.textInputBackgroundColor,
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(5),
          borderSide: BorderSide(
            color: AppColors.textInputBorderColor,
          ),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(5),
          borderSide: BorderSide(
            color: AppColors.textInputBorderColor,
            width: 0.5.h,
          ),
        ),
      ),
    );
  }
}
