import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:our_children/core/utils/app_colors.dart';
import 'package:our_children/core/utils/app_text_style.dart';
import '../../core/functions/navigation.dart';
import '../../core/utils/app_assets.dart';
import '../../core/utils/app_strings.dart';

class FirstScreenView extends StatelessWidget {
  const FirstScreenView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: [
          //!background
          Image.asset(
            Assets.assetsImagesBackgroundone,
            fit: BoxFit.fill,
          ),

          Padding(
            padding: const EdgeInsets.only(top: 200),
            child: Column(
              children: [
                Image.asset(
                  Assets.assetsImagesLogo,
                  width: 200.w,
                ),
                SizedBox(
                  height: 5.h,
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 35),
                  child: Text(
                    AppStrings.weHaveIt,
                    style: CustomTextStyle.inter700style24,
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 800),
            child: Row(
              children: [
                Row(
                  children: [
                    IconButton(
                      onPressed: () {
                        customReplacementNavigate(context, "/SignUpView");
                      },
                      icon: const Icon(
                        Icons.arrow_back_ios,
                        size: 25,
                        color: AppColors.black,
                      ),
                    ),
                    Text(
                      AppStrings.go,
                      style: CustomTextStyle.inter700style28
                          .copyWith(fontWeight: FontWeight.w900),
                    )
                  ],
                ),
                SizedBox(
                  width: 174.w,
                ),
                Container(
                  alignment: Alignment.center,
                  width: 170.w,
                  height: 50.h,
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.only(
                        bottomRight: Radius.circular(25),
                        topRight: Radius.circular(25)),
                    color: AppColors.darkGry,
                  ),
                  child: Text(
                    AppStrings.needHelp,
                    style: CustomTextStyle.cairo700style20,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
