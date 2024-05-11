import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:our_children/core/utils/app_text_style.dart';

import '../utils/app_colors.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
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
      width: double.infinity,
      height: 56,
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          backgroundColor: color ?? AppColors.primaryColor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
          ),
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Padding(
              padding: EdgeInsets.all(5),
              child: Icon(
                size: 40,
                Icons.arrow_circle_right_rounded,
                color: AppColors.black,
              ),
            ),
            const SizedBox(
              width: 70,
            ),
            Text(
              text,
              style: CustomTextStyle.cairo700style50
                  .copyWith(fontSize: 18, color: AppColors.black),
            ),
          ],
        ),
      ),
    );
  }
}
