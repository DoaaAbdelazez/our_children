import 'package:flutter/material.dart';
import 'package:our_children/core/utils/app_text_style.dart';
import '../../../../core/utils/app_colors.dart';

class CustomButtnHome extends StatelessWidget {
  const CustomButtnHome({
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
      width: 100,
      height: 45,
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          backgroundColor: color ?? AppColors.primaryColor,
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
