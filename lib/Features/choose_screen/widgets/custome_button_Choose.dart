import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:our_children/core/utils/app_text_style.dart';

import '../../../core/utils/app_colors.dart';

class CustomButtonChoose extends StatelessWidget {
  const CustomButtonChoose({
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
      width: 250.w,
      height: 100.h,
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
