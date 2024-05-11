import 'package:flutter/material.dart';

import '../../../../core/utils/app_colors.dart';
import '../../../../core/utils/app_text_style.dart';

class CustomTextForm extends StatelessWidget {
  const CustomTextForm({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        top: 16,
      ),
      child: TextFormField(
        cursorColor: AppColors.black,
        decoration: InputDecoration(
          fillColor: AppColors.white,
          filled: true,
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
    borderRadius: BorderRadius.circular(15),
    // borderSide: const BorderSide(color: AppColors.black, strokeAlign: 3),
  );
}
