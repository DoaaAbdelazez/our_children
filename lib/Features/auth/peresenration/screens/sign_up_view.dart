import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:our_children/Features/auth/peresenration/auth_cubit/cubit/auth_cubit.dart';
import 'package:our_children/Features/auth/peresenration/auth_cubit/cubit/auth_state.dart';
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
                child: Image.asset(Assets.assetsImagesLogo, height: 150.h),
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
              SliverToBoxAdapter(
                child: SizedBox(
                  height: 2.h,
                ),
              ),
              //!Form Field
              SliverToBoxAdapter(
                child: Center(
                  child: BlocConsumer<AuthCubit, AuthState>(
                    listener: (context, state) {},
                    builder: (context, state) {
                      return Form(
                        key: BlocProvider.of<AuthCubit>(context).signUpKey,
                        child: Column(
                          children: [
                            //!name
                            CustomTextFormField(
                              keyboardType: TextInputType.name,
                              validate: (data) {
                                if (data!.isEmpty) {
                                  return AppStrings.enterName;
                                }
                                return null;
                              },
                              controller: BlocProvider.of<AuthCubit>(context)
                                  .signUpNameController,
                              prefixIcon: const Icon(
                                Icons.person,
                                color: AppColors.black,
                              ),
                              labeltext: AppStrings.enterYourName,
                            ),
                            //!SizedBox
                            SizedBox(
                              height: 16.h,
                            ),

                            //!Email
                            CustomTextFormField(
                              keyboardType: TextInputType.emailAddress,
                              controller: BlocProvider.of<AuthCubit>(context)
                                  .signInEmailController,
                              prefixIcon: const Icon(
                                Icons.email_outlined,
                                color: AppColors.black,
                              ),
                              labeltext: AppStrings.email,
                              validate: (data) {
                                if (data!.isEmpty ||
                                    !data.contains('@gmail.com')) {
                                  return AppStrings.enterValidEmail;
                                }
                                return null;
                              },
                            ),
                            //!SizedBox
                            SizedBox(
                              height: 16.h,
                            ),
                            //!password
                            CustomTextFormField(
                              validate: (data) {
                                if (data!.length < 6 || data.isEmpty) {
                                  return AppStrings.shouldpassword;
                                }
                                return null;
                              },
                              controller: BlocProvider.of<AuthCubit>(context)
                                  .signInPasswordController,
                              isPassword: BlocProvider.of<AuthCubit>(context)
                                  .isSignUpPasswordShowing,
                              icon: BlocProvider.of<AuthCubit>(context)
                                  .passwordsuffixIcon,
                              suffixIconOnPressed: () {
                                BlocProvider.of<AuthCubit>(context)
                                    .changeSignUpPasswordSuffixIcon();
                              },
                              prefixIcon: const Icon(
                                Icons.lock_outline,
                                color: AppColors.black,
                              ),
                              labeltext: AppStrings.password,
                            ),
                            //!SizedBox
                            SizedBox(
                              height: 16.h,
                            ),
                            //!conf_pass
                            CustomTextFormField(
                              validate: (data) {
                                if (BlocProvider.of<AuthCubit>(context)
                                        .signUpConfPasswordController
                                        .text !=
                                    BlocProvider.of<AuthCubit>(context)
                                        .signInPasswordController
                                        .text) {
                                  return AppStrings.thePasswordNotMatch;
                                }
                                return null;
                              },
                              controller: BlocProvider.of<AuthCubit>(context)
                                  .signUpConfPasswordController,
                              isPassword: BlocProvider.of<AuthCubit>(context)
                                  .isSignUpConfPasswordShowing,
                              icon: BlocProvider.of<AuthCubit>(context)
                                  .confPassowrdsuffixIcon,
                              suffixIconOnPressed: () {
                                BlocProvider.of<AuthCubit>(context)
                                    .changeSignUpConfPasswordSuffixIcon();
                              },
                              prefixIcon: const Icon(
                                Icons.lock_outline,
                                color: AppColors.black,
                              ),
                              labeltext: AppStrings.confPassword,
                            ),
                            //!sizedBox

                            SizedBox(
                              height: 5.h,
                            ),
                            //!checkBox_Text

                            const TermsAndCondationWdget(
                              text: AppStrings.accept,
                            ),
                            //!btn
                            CustomButton(
                              onPressed: () {
                                BlocProvider.of<AuthCubit>(context)
                                    .signUpKey
                                    .currentState!
                                    .validate();
                                customNavigate(context, "/SignInView");
                              },
                              text: AppStrings.signup,
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
