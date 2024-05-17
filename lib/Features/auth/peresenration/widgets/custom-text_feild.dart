import 'package:flutter/material.dart';

import '../../../../core/utils/app_colors.dart';
import '../../../../core/utils/app_text_style.dart';

class CustomTextFormField extends StatelessWidget {
  const CustomTextFormField({
    super.key,
    required this.labeltext,
    required this.prefixIcon,
    this.isPassword = false,
    this.suffixIconOnPressed,
    this.icon, required this.controller, this.validate, this.keyboardType,
  });
  final String labeltext;
  final Icon prefixIcon;
  final bool isPassword;
  final IconData? icon;
  final String? Function(String?)? validate;
  final VoidCallback? suffixIconOnPressed;
  final TextEditingController controller;
  final TextInputType? keyboardType;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        top: 16,
      ),
      child: TextFormField(
        keyboardType: keyboardType,
        controller: controller,
        validator: validate,
        obscureText: isPassword,
        cursorColor: AppColors.primaryColor,
        decoration: InputDecoration(
          errorBorder: getBorderStyle(),
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
