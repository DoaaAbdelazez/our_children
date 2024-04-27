import 'package:flutter/material.dart';
import 'package:our_children/core/utils/app_assets.dart';
import 'package:our_children/core/utils/app_strings.dart';
import 'package:our_children/core/utils/app_text_style.dart';
import 'package:our_children/core/widgets/custom_btn.dart';

class RulesScreenView extends StatelessWidget {
  const RulesScreenView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: [
          Image.asset(
            Assets.assetsImagesOn1,
            fit: BoxFit.cover,
          ),
          Padding(
            padding: const EdgeInsets.only(top: 122),
            child: Column(
              children: [
                //!First text
                Text(
                  AppStrings.explane,
                  style: CustomTextStyle.cairo400style24,
                ),
                const SizedBox(
                  height: 10,
                ),
                //!sec_text
                Text(
                  AppStrings.explane2,
                  style: CustomTextStyle.cairo400style24,
                ),
//!frame1_image
                Image.asset(
                  Assets.assetsImagesFrame3,
                  width: 370,
                ),
                //!frame2_image
                Image.asset(Assets.assetsImagesFrame4, width: 360),

                SizedBox(
                  height: 50,
                ),
                //!btn
                Padding(
                  padding: const EdgeInsets.only(right: 25, left: 25),
                  child: CustomBtn(onPressed: () {}, text: AppStrings.clickHer),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
