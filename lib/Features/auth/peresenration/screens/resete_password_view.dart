import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:our_children/Features/auth/peresenration/auth_cubit/cubit/auth_cubit.dart';
import 'package:our_children/Features/auth/peresenration/auth_cubit/cubit/auth_state.dart';
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
                  //!Form
                  BlocConsumer<AuthCubit, AuthState>(
                    listener: (context, state) {},
                    builder: (context, state) {
                      return Form(
                        key: BlocProvider.of<AuthCubit>(context)
                            .resetPasswordKey,
                        child: Column(
                          children: [
                            //!Password
                            CustomTextFormField(
                              validate: (data) {
                                if (data!.length < 6 || data.isEmpty) {
                                  return AppStrings.shouldpassword;
                                }
                                return null;
                              },
                              controller: BlocProvider.of<AuthCubit>(context)
                                  .resetPasswordController,
                              isPassword: BlocProvider.of<AuthCubit>(context)
                                  .isresetPasswordShowing,
                              icon: BlocProvider.of<AuthCubit>(context)
                                  .resetPasswordsuffixIcon,
                              suffixIconOnPressed: () {
                                BlocProvider.of<AuthCubit>(context)
                                    .changeResetPasswordSuffixIcon();
                              },
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
                              validate: (data) {
                                if (BlocProvider.of<AuthCubit>(context)
                                        .resetConfPasswordController
                                        .text !=
                                    BlocProvider.of<AuthCubit>(context)
                                        .resetPasswordController
                                        .text) {
                                  return AppStrings.thePasswordNotMatch;
                                }
                                return null;
                              },
                              controller: BlocProvider.of<AuthCubit>(context)
                                  .resetConfPasswordController,
                              isPassword: BlocProvider.of<AuthCubit>(context)
                                  .isresetConfPasswordShowing,
                              icon: BlocProvider.of<AuthCubit>(context)
                                  .resetConfPassowrdsuffixIcon,
                              suffixIconOnPressed: () {
                                BlocProvider.of<AuthCubit>(context)
                                    .changeResetConfPasswordSuffixIcon();
                              },
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
                              validate: (data) {
                                if (data!.isEmpty) {
                                  return AppStrings.enterCode;
                                }
                                return null;
                              },
                              keyboardType: TextInputType.number,
                              controller: BlocProvider.of<AuthCubit>(context)
                                  .resetCodeController,
                              prefixIcon: const Icon(
                                Icons.code,
                                color: AppColors.black,
                              ),
                              labeltext: AppStrings.code,
                            ),
                            SizedBox(
                              height: 24.h,
                            ),
                            //!btn
                            CustomBtn(
                              onPressed: () {
                                if (BlocProvider.of<AuthCubit>(context)
                                    .resetPasswordKey
                                    .currentState!
                                    .validate()) {
                                  customReplacementNavigate(
                                      context, "/SignInView");
                                }
                              },
                              text: AppStrings.resetPass,
                            ),
                          ],
                        ),
                      );
                    },
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
