import 'package:flutter/material.dart';
import 'package:our_children/core/utils/app_text_style.dart';

import '../../../core/utils/app_colors.dart';

class CustomButtnChoose extends StatelessWidget {
  const CustomButtnChoose({
    super.key,
    this.color,
    required this.text,
    this.onPressed,
  });
  final Color? color;
  final String text;
  final VoidCallback? onPressed;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 114,
      height: 100,
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          backgroundColor: color ?? AppColors.white,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8),
          ),
        ),
        child: Text(
          text,
          style: CustomTextStyle.cairo600style24
              .copyWith(fontSize: 18, color: AppColors.black),
        ),
      ),
    );
  }
}
