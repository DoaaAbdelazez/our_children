import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:our_children/Features/auth/peresenration/auth_cubit/cubit/auth_cubit.dart';
import 'package:our_children/Features/auth/peresenration/auth_cubit/cubit/auth_state.dart';
import 'package:our_children/core/utils/app_assets.dart';
import '../../../../core/functions/navigation.dart';
import '../../../../core/utils/app_colors.dart';
import '../../../../core/utils/app_strings.dart';
import '../../../../core/utils/app_text_style.dart';
import '../../../../core/widgets/custom_loading_indicator.dart';
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

              //!Form Field
              SliverToBoxAdapter(
                child: Center(
                  child: BlocConsumer<AuthCubit, AuthState>(
                    listener: (context, state) {},
                    builder: (context, state) {
                      return Form(
                        key: BlocProvider.of<AuthCubit>(context).signInKey,
                        child: Column(
                          children: [
                            //!Email
                            CustomTextFormField(
                              keyboardType: TextInputType.emailAddress,
                              controller: BlocProvider.of<AuthCubit>(context)
                                  .signInEmailController,
                              validate: (data) {
                                if (data!.isEmpty ||
                                    !data.contains('@gmail.com')) {
                                  return AppStrings.enterValidEmail;
                                }
                                return null;
                              },
                              prefixIcon: const Icon(
                                Icons.email_outlined,
                                color: AppColors.black,
                              ),
                              labeltext: AppStrings.email,
                            ),
                            //!SizedBox
                            SizedBox(
                              height: 16.h,
                            ),
                            //!password
                            CustomTextFormField(
                              controller: BlocProvider.of<AuthCubit>(context)
                                  .signInPasswordController,
                              isPassword: BlocProvider.of<AuthCubit>(context)
                                  .isLoginPasswordShowing,
                              icon: BlocProvider.of<AuthCubit>(context)
                                  .loginsuffixIcon,
                              suffixIconOnPressed: () {
                                BlocProvider.of<AuthCubit>(context)
                                    .changeLoginPasswordSuffixIcon();
                              },
                              validate: (data) {
                                if (data!.length < 6 || data.isEmpty) {
                                  return AppStrings.enterValidPassword;
                                }
                                return null;
                              },
                              prefixIcon: const Icon(
                                Icons.lock_outline,
                                color: AppColors.black,
                              ),
                              labeltext: AppStrings.password,
                            ),
                            //!SizedBox
                            SizedBox(
                              height: 10.h,
                            ),

                            //!checkBox_Text
                            Row(
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
                            //!SizedBox
                            SizedBox(
                              height: 12.h,
                            ),

                            //!btn
                            state is SignInLoadingState
                                ? const CusotmLoadingIndicator()
                                : CustomButton(
                                    onPressed: () {
                                      if (BlocProvider.of<AuthCubit>(context)
                                          .signInKey
                                          .currentState!
                                          .validate()) {
                                        // customReplacementNavigate(
                                        //     context, "/RulesScreenView");
                                      }
                                    },
                                    text: AppStrings.login,
                                  ),
                          ],
                        ),
                      );
                    },
                  ),
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
