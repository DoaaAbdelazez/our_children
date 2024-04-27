import 'package:flutter/material.dart';

import '../../../../core/utils/app_text_style.dart';
import 'custome_checkbox.dart';

class TermsAndCondationWdget extends StatelessWidget {
  const TermsAndCondationWdget({super.key, required this.text});
  final String text;
  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        const CustomCheckBox(),
        Text(
        text,
          style: CustomTextStyle.almarai400style14,
        ),
      ],
    );
  }
}
