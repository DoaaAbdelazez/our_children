import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:our_children/core/utils/app_assets.dart';
import '../../../../core/functions/navigation.dart';
import '../../../../core/utils/app_colors.dart';
import '../../../../core/utils/app_strings.dart';
import '../../../../core/utils/app_text_style.dart';
import '../../../../core/widgets/custome_button.dart';
import '../widgets/custom-text_feild.dart';
import '../widgets/terms_and_condation.dart';

class SignInView extends StatelessWidget {
  const SignInView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(fit: StackFit.expand, children: [
        //!background
        Image.asset(
          Assets.assetsImagesBackgroundone,
          fit: BoxFit.cover,
        ),
        Padding(
          padding: const EdgeInsets.all(20),
          child: CustomScrollView(
            slivers: [
              SliverToBoxAdapter(
                child: SizedBox(
                  height: 60.h,
                ),
              ),
              //!image
              SliverToBoxAdapter(
                child: Image.asset(Assets.assetsImagesLogo, height: 170.h),
              ),

              // //!Hello text
              SliverToBoxAdapter(
                child: Padding(
                  padding: const EdgeInsets.only(bottom: 4, top: 5),
                  child: Center(
                    child: Text(
                      AppStrings.welcome,
                      style: CustomTextStyle.cairo700style50
                          .copyWith(fontSize: 35),
                    ),
                  ),
                ),
              ),
              //!sizedbox
              SliverToBoxAdapter(
                child: SizedBox(
                  height: 10.h,
                ),
              ),

              //!Email
              const SliverToBoxAdapter(
                child: Center(
                  child: CustomTextFormField(
                    prefixIcon: Icon(
                      Icons.email_outlined,
                      color: AppColors.black,
                    ),
                    labeltext: AppStrings.email,
                  ),
                ),
              ),
              //!password
              const SliverToBoxAdapter(
                child: Center(
                  child: CustomTextFormField(
                    isPassword: true,
                    icon: Icons.remove_red_eye,
                    prefixIcon: Icon(
                      Icons.lock_outline,
                      color: AppColors.black,
                    ),
                    labeltext: AppStrings.password,
                  ),
                ),
              ),

              //!sizedBox
              SliverToBoxAdapter(
                child: SizedBox(
                  height: 10.h,
                ),
              ),
              //!checkBox_Text
              SliverToBoxAdapter(
                child: Row(
                  children: [
                    const TermsAndCondationWdget(
                      text: AppStrings.rememberMe,
                    ),
                    SizedBox(
                      width: 160.w,
                    ),
                    TextButton(
                      onPressed: () {
                        customReplacementNavigate(
                            context, "/ForgetPasswordView");
                      },
                      child: Text(
                        AppStrings.forgetPass,
                        style: CustomTextStyle.almarai400style14
                            .copyWith(fontWeight: FontWeight.bold),
                      ),
                    ),
                  ],
                ),
              ),
              //!sizedBox
              SliverToBoxAdapter(
                child: SizedBox(
                  height: 12.h,
                ),
              ),
              //!btn
              SliverToBoxAdapter(
                child: CustomButton(
                  onPressed: () {
                    customReplacementNavigate(context, "/RulesScreenView");
                  },
                  text: AppStrings.login,
                ),
              ),
              //!sizedBox
              SliverToBoxAdapter(
                child: SizedBox(
                  height: 12.h,
                ),
              ),
              //!HaveAccount
              SliverToBoxAdapter(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(AppStrings.noHaveAccount,
                        style: CustomTextStyle.almarai400style14),
                    TextButton(
                      onPressed: () {
                        customReplacementNavigate(context, "/SignUpView");
                      },
                      child: Text(
                        AppStrings.createAccount,
                        style: CustomTextStyle.almarai400style14
                            .copyWith(fontWeight: FontWeight.bold),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ]),
    );
  }
}
