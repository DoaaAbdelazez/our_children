import 'package:flutter/material.dart';
import 'package:our_children/core/functions/navigation.dart';
import 'package:our_children/core/utils/app_assets.dart';
import 'package:our_children/core/utils/app_strings.dart';
import 'widgets/custom_bttn_choose.dart';
import 'widgets/custome_button_Choose.dart';

class ChooseScreenView extends StatelessWidget {
  const ChooseScreenView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: [
          //!Background
          Image.asset(
            Assets.assetsImagesBackgroundone,
            fit: BoxFit.cover,
          ),

          Padding(
            padding: const EdgeInsets.all(80),
            child: Column(
              children: [
                //!logo
                Image.asset(
                  Assets.assetsImagesLogo,
                  width: 200,
                ),

                const SizedBox(
                  height: 67,
                ),
                //!buttons
                CustomButtonChoose(
                    onPressed: () {}, text: AppStrings.searchFamily),

                const SizedBox(
                  height: 24,
                ),
                CustomButtonChoose(
                    onPressed: () {}, text: AppStrings.searchTheme),

                const SizedBox(
                  height: 24,
                ),
                Row(
                  children: [
                    CustomButtnChoose(
                        onPressed: () {
                          customReplacementNavigate(context, "/SearchScreen");
                        },
                        text: AppStrings.search),
                    const SizedBox(
                      width: 22,
                    ),
                    CustomButtnChoose(
                        onPressed: () {
                          customReplacementNavigate(context, "/ReportScreen");
                        },
                        text: AppStrings.report)
                  ],
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
