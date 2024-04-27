import 'package:flutter/material.dart';
import 'package:our_children/core/utils/app_assets.dart';

import '../../../../core/functions/navigation.dart';
import '../../../../core/utils/app_colors.dart';
import '../../../../core/utils/app_strings.dart';
import '../../../../core/utils/app_text_style.dart';
import '../../../../core/widgets/custome_button.dart';
import '../widgets/custom-text_feild.dart';
import '../widgets/have_account.dart';
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
              const SliverToBoxAdapter(
                child: SizedBox(
                  height: 60,
                ),
              ),
              //!image
              SliverToBoxAdapter(
                child: Image.asset(Assets.assetsImagesLogo, height: 170),
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
              const SliverToBoxAdapter(
                child: SizedBox(
                  height: 10,
                ),
              ),

              //!Email
              const SliverToBoxAdapter(
                child: Center(
                  child: CustomtextFeild(
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
                  child: CustomtextFeild(
                    prefixIcon: Icon(
                      Icons.lock_outline,
                      color: AppColors.black,
                    ),
                    labeltext: AppStrings.password,
                  ),
                ),
              ),

              //!sizedBox
              const SliverToBoxAdapter(
                child: SizedBox(
                  height: 10,
                ),
              ),
              //!checkBox_Text
              const SliverToBoxAdapter(
                child: Row(
                  children: [
                    TermsAndCondationWdget(
                      text: AppStrings.rememberMe,
                    ),
                    SizedBox(
                      width: 168,
                    ),
                    Text(
                      AppStrings.forgetPass,
                      style: TextStyle(
                          color: AppColors.white, fontWeight: FontWeight.bold),
                    )
                  ],
                ),
              ),
              //!sizedBox
              const SliverToBoxAdapter(
                child: SizedBox(
                  height: 12,
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
              const SliverToBoxAdapter(
                child: SizedBox(
                  height: 12,
                ),
              ),
              //!HaveAccount
              const SliverToBoxAdapter(
                  child: HaveAccount(
                      text1: AppStrings.noHaveAccount,
                      text2: AppStrings.createAccount)),
            ],
          ),
        ),
      ]),
    );
  }
}
