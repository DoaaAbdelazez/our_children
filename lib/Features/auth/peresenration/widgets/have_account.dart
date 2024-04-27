import 'package:flutter/material.dart';

import '../../../../core/utils/app_text_style.dart';

class HaveAccount extends StatelessWidget {
  const HaveAccount({super.key, required this.text1, required this.text2});
  final String text1, text2;
  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: Text.rich(
        TextSpan(
          children: [
            TextSpan(text: text1, style: CustomTextStyle.almarai400style14),
            TextSpan(
                text: text2,
                style: CustomTextStyle.almarai400style14
                    .copyWith(fontWeight: FontWeight.bold)),
          ],
        ),
      ),
    );
  }
}
