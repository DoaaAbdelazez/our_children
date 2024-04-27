import 'package:flutter/material.dart';

import '../../../../core/utils/app_colors.dart';
import '../../../../core/utils/app_text_style.dart';

class CustomtextFeild extends StatelessWidget {
  const CustomtextFeild({
    super.key,
    required this.labeltext,
    required this.prefixIcon,
  });
  final String labeltext;
  final Icon prefixIcon;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        top: 16,
      ),
      child: TextField(
        decoration: InputDecoration(
          fillColor: AppColors.white,
          filled: true,
          prefixIcon: prefixIcon,
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
