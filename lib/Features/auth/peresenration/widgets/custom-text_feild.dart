import 'package:flutter/material.dart';

import '../../../../core/utils/app_colors.dart';
import '../../../../core/utils/app_text_style.dart';

class CustomtextFeild extends StatelessWidget {
  const CustomtextFeild({
    super.key,
    required this.labeltext,
    required this.prefixIcon,
    this.isPassword = false,
    this.suffixIconOnPressed,
    this.icon,
  });
  final String labeltext;
  final Icon prefixIcon;
  final bool isPassword;
  final IconData? icon;
  final VoidCallback? suffixIconOnPressed;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        top: 16,
      ),
      child: TextField(
        obscureText: isPassword,
        cursorColor: AppColors.primaryColor,
        decoration: InputDecoration(
          fillColor: AppColors.white,
          filled: true,
          prefixIcon: prefixIcon,
          suffixIcon: IconButton(
            onPressed: suffixIconOnPressed,
            icon: Icon(
              icon,
              color: AppColors.black,
            ),
          ),
          labelText: labeltext,
          labelStyle: CustomTextStyle.cairo400style15,
          border: getBorderStyle(),
          enabledBorder: getBorderStyle(),
          focusedBorder: getBorderStyle(),
        ),
      ),
    );
  }
}

OutlineInputBorder getBorderStyle() {
  return OutlineInputBorder(
    borderRadius: BorderRadius.circular(12),
    borderSide: const BorderSide(color: AppColors.black, strokeAlign: 3),
  );
}
