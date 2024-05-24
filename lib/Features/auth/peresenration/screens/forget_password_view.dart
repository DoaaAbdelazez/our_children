import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:our_children/Features/auth/peresenration/auth_cubit/cubit/auth_cubit.dart';
import 'package:our_children/Features/auth/peresenration/auth_cubit/cubit/auth_state.dart';
import 'package:our_children/Features/auth/peresenration/widgets/custom-text_feild.dart';
import 'package:our_children/core/functions/navigation.dart';
import 'package:our_children/core/utils/app_assets.dart';
import 'package:our_children/core/utils/app_strings.dart';
import 'package:our_children/core/utils/app_text_style.dart';
import 'package:our_children/core/widgets/custom_btn.dart';

import '../../../../core/widgets/custom_loading_indicator.dart';

class ForgetPasswordView extends StatelessWidget {
  const ForgetPasswordView({super.key});

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
          Padding(
            padding: const EdgeInsets.all(20),
            child: BlocConsumer<AuthCubit, AuthState>(
              listener: (context, state) {
                if (state is ForgetPasswordSucessState) {
                  ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                    content: Text("Check your Email"),
                  ));

                  customReplacementNavigate(context, "/ResetePasswordView");
                } else if (state is SignUpErrorState) {
                  ScaffoldMessenger.of(context)
                      .showSnackBar(SnackBar(content: Text(state.message)));
                }
              },
              builder: (context, state) {
                return SingleChildScrollView(
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 60),
                        child: Image.asset(
                          Assets.assetsImagesLogo,
                          width: 200.w,
                        ),
                      ),
                      SizedBox(
                        height: 54.h,
                      ),
                      Text(
                        AppStrings.isForgetPassword,
                        style: CustomTextStyle.cairo700style24,
                      ),
                      SizedBox(
                        height: 24.h,
                      ),
                      Text(
                        AppStrings.pleseWriteEmail,
                        style: CustomTextStyle.cairo400style16,
                      ),
                      SizedBox(
                        height: 24.h,
                      ),
                      Form(
                        key: BlocProvider.of<AuthCubit>(context)
                            .forgetPasswordKey,
                        //!email
                        child: CustomTextFormField(
                          keyboardType: TextInputType.emailAddress,
                          controller: BlocProvider.of<AuthCubit>(context)
                              .forgetPasswordEmailController,
                          hintText: AppStrings.email,
                          prefixIcon: const Icon(Icons.email),
                          validate: (data) {
                            if (data!.isEmpty || !data.contains('@gmail.com')) {
                              return AppStrings.enterValidEmail;
                            }
                            return null;
                          },
                        ),
                      ),
                      SizedBox(
                        height: 30.h,
                      ),
                      state is ForgetPasswordLoadingState
                          ? const CusotmLoadingIndicator()
                          : CustomBtn(
                              onPressed: () {
                                BlocProvider.of<AuthCubit>(context)
                                    .forgetPasswordKey
                                    .currentState!
                                    .validate();
                                {
                                  BlocProvider.of<AuthCubit>(context)
                                      .sendCode();
                                }
                              },
                              text: AppStrings.sendCode,
                            ),
                    ],
                  ),
                );
              },
            ),
          )
        ],
      ),
    );
  }
}
