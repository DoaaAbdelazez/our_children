import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:our_children/core/utils/app_colors.dart';
import 'package:our_children/core/utils/app_strings.dart';
import 'package:our_children/core/utils/app_text_style.dart';
import '../../../../core/functions/navigation.dart';
import '../../../../core/utils/app_assets.dart';

import '../../../../core/widgets/custome_button.dart';
import '../widgets/custom-text_feild.dart';
import '../widgets/terms_and_condation.dart';

class SignUpView extends StatelessWidget {
  const SignUpView({super.key});

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
          padding: const EdgeInsets.all(24),
          child: CustomScrollView(
            slivers: [
              const SliverToBoxAdapter(
                child: SizedBox(
                  height: 18,
                ),
              ),
              //!image
              SliverToBoxAdapter(
                child: Image.asset(Assets.assetsImagesLogo, height: 150),
              ),

              // //!Hello text
              SliverToBoxAdapter(
                child: Padding(
                  padding: const EdgeInsets.only(bottom: 3, top: 5),
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
                  height: 2,
                ),
              ),
              //!name
              const SliverToBoxAdapter(
                child: Center(
                  child: CustomtextFeild(
                    prefixIcon: Icon(
                      Icons.person,
                      color: AppColors.black,
                    ),
                    labeltext: AppStrings.enterYourName,
                  ),
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
              //!conf_pass
              const SliverToBoxAdapter(
                child: Center(
                  child: CustomtextFeild(
                    isPassword: true,
                    icon: Icons.remove_red_eye,
                    prefixIcon: Icon(
                      Icons.lock_outline,
                      color: AppColors.black,
                    ),
                    labeltext: AppStrings.confPassword,
                  ),
                ),
              ),
              //!sizedBox
              const SliverToBoxAdapter(
                child: SizedBox(
                  height: 5,
                ),
              ),
              //!checkBox_Text
              const SliverToBoxAdapter(
                child: TermsAndCondationWdget(
                  text: AppStrings.accept,
                ),
              ),
              //!sizedBox
              const SliverToBoxAdapter(
                child: SizedBox(
                  height: 5,
                ),
              ),
              //!btn
              SliverToBoxAdapter(
                child: CustomButton(
                  onPressed: () {
                    customReplacementNavigate(context, "/SignInView");
                  },
                  text: AppStrings.signup,
                ),
              ),
              //!sizedBox
              const SliverToBoxAdapter(
                child: SizedBox(
                  height: 12,
                ),
              ),
              //!HaveAccount
              SliverToBoxAdapter(
                  child: Align(
                alignment: Alignment.center,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(AppStrings.haveAccount,
                        style: CustomTextStyle.almarai400style14),
                    TextButton(
                      onPressed: () {
                        customReplacementNavigate(context, "/SignInView");
                      },
                      child: Text(
                        AppStrings.login,
                        style: CustomTextStyle.almarai400style14
                            .copyWith(fontWeight: FontWeight.bold),
                      ),
                    ),
                  ],
                ),
              )),
            ],
          ),
        ),
      ]),
    );
  }
}
