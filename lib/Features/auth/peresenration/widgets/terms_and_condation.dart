import 'package:flutter/material.dart';

import '../../../../core/utils/app_strings.dart';
import '../../../../core/utils/app_text_style.dart';
import 'custome_checkbox.dart';

class TermsAndCondationWdget extends StatelessWidget {
  const TermsAndCondationWdget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        const CustomCheckBox(),
        Text(
          AppStrings.accept,
          style: CustomTextStyle.almarai400style14,
        ),
      ],
    );
  }
}
