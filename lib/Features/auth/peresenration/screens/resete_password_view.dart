import 'package:flutter/material.dart';
import 'package:our_children/core/utils/app_assets.dart';
import 'package:our_children/core/utils/app_text_style.dart';
import '../../../../core/functions/navigation.dart';
import '../../../../core/utils/app_colors.dart';
import '../../../../core/utils/app_strings.dart';
import '../../../../core/widgets/custom_btn.dart';
import '../widgets/custom-text_feild.dart';

class ResetePasswordView extends StatelessWidget {
  const ResetePasswordView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: [
          //!background
          Image.asset(
            Assets.assetsImagesBackgroundone,
            fit: BoxFit.cover,
          ),
          SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(34),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 35),
                    child: Image.asset(
                      Assets.assetsImagesLogo,
                      width: 200,
                    ),
                  ),
                  const SizedBox(
                    height: 40,
                  ),
                  Text(
                    AppStrings.resetPass,
                    style: CustomTextStyle.cairo700style24,
                  ),
                  const SizedBox(
                    height: 24,
                  ),
                  const CustomTextFormField(
                    isPassword: true,
                    icon: Icons.remove_red_eye,
                    prefixIcon: Icon(
                      Icons.lock_outline,
                      color: AppColors.black,
                    ),
                    labeltext: AppStrings.newPass,
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  const CustomTextFormField(
                    isPassword: true,
                    icon: Icons.remove_red_eye,
                    prefixIcon: Icon(
                      Icons.lock_outline,
                      color: AppColors.black,
                    ),
                    labeltext: AppStrings.confNewPass,
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  const CustomTextFormField(
                    prefixIcon: Icon(
                      Icons.code,
                      color: AppColors.black,
                    ),
                    labeltext: AppStrings.code,
                  ),
                  const SizedBox(
                    height: 24,
                  ),
                  CustomBtn(
                    onPressed: () {
                      customReplacementNavigate(context, "/ResetePasswordView");
                    },
                    text: AppStrings.resetPass,
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
