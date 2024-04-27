import 'package:flutter/material.dart';
import 'package:our_children/Features/auth/peresenration/widgets/have_account.dart';
import 'package:our_children/core/utils/app_colors.dart';
import 'package:our_children/core/utils/app_strings.dart';
import 'package:our_children/core/utils/app_text_style.dart';
import '../../../../core/utils/app_assets.dart';
import '../../../../core/widgets/custom_btn.dart';
import '../widgets/custom-text_feild.dart';
import '../widgets/terms_and_condation.dart';

class SignUpView extends StatelessWidget {
  const SignUpView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        // width: double.infinity,
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage(Assets.assetsImagesLogin),
            fit: BoxFit.cover,
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 2),
          child: CustomScrollView(
            slivers: [
              const SliverToBoxAdapter(
                child: SizedBox(
                  height: 18,
                ),
              ),
              //!image
              SliverToBoxAdapter(
                child: Image.asset(Assets.assetsImagesLogo),
              ),

              // //!Hello text
              // SliverToBoxAdapter(
              //   child: Padding(
              //     padding: const EdgeInsets.only(bottom: 4, top: 5),
              //     child: Center(
              //       child: Text(
              //         AppStrings.welcome,
              //         style: CustomTextStyle.cairo700style40
              //             .copyWith(fontSize: 30),
              //       ),
              //     ),
              //   ),
              // ),
              //!sizedbox
              const SliverToBoxAdapter(
                child: SizedBox(
                  height: 10,
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
                  height: 12,
                ),
              ),
              //!checkBox_Text
              const SliverToBoxAdapter(
                child: TermsAndCondationWdget(),
              ),
              //!sizedBox
              const SliverToBoxAdapter(
                child: SizedBox(
                  height: 12,
                ),
              ),
              //!btn
              SliverToBoxAdapter(
                child: CustomBtn(
                  onPressed: () {},
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
              const SliverToBoxAdapter(
                  child: HaveAccount(
                      text1: AppStrings.haveAccount, text2: AppStrings.login)),
            ],
          ),
        ),
      ),
    );
  }
}
