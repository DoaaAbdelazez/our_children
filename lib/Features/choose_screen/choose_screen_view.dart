import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
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
                  width: 200.w,
                ),

                SizedBox(
                  height: 67.h,
                ),
                //!buttons
                SizedBox(
                  height: 24.h,
                ),
                CustomButtonChoose(
                    onPressed: () {}, text: AppStrings.searchFamily),

                SizedBox(
                  height: 24.h,
                ),
                Row(
                  children: [
                    CustomButtnChoose(
                        onPressed: () {
                          customNavigate(context, "/SearchScreen");
                        },
                        text: AppStrings.search),
                    SizedBox(
                      width: 22.w,
                    ),
                    CustomButtnChoose(
                        onPressed: () {
                          customNavigate(context, "/ReportScreen");
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
