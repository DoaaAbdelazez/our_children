import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
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
                      width: 200.w,
                    ),
                  ),
                  SizedBox(
                    height: 40.h,
                  ),
                  Text(
                    AppStrings.resetPass,
                    style: CustomTextStyle.cairo700style24,
                  ),
                  SizedBox(
                    height: 24.h,
                  ),
                  //!Password
                  CustomTextFormField(
                    controller: TextEditingController(),
                    isPassword: true,
                    icon: Icons.visibility,
                    prefixIcon: const Icon(
                      Icons.lock_outline,
                      color: AppColors.black,
                    ),
                    labeltext: AppStrings.newPass,
                  ),
                  SizedBox(
                    height: 16.h,
                  ),
                  //!conf_pass
                  CustomTextFormField(
                    controller: TextEditingController(),
                    isPassword: true,
                    icon: Icons.visibility,
                    prefixIcon: const Icon(
                      Icons.lock_outline,
                      color: AppColors.black,
                    ),
                    labeltext: AppStrings.confNewPass,
                  ),
                  SizedBox(
                    height: 16.h,
                  ),
                  //!code
                  CustomTextFormField(
                    keyboardType: TextInputType.number,
                    controller: TextEditingController(),
                    prefixIcon: const Icon(
                      Icons.code,
                      color: AppColors.black,
                    ),
                    labeltext: AppStrings.code,
                  ),
                  SizedBox(
                    height: 24.h,
                  ),
                  CustomBtn(
                    onPressed: () {
                      customNavigate(context, "/ResetePasswordView");
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
