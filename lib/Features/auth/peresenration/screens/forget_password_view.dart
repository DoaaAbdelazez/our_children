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
            child: SingleChildScrollView(
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
              
                  BlocConsumer<AuthCubit, AuthState>(
                    listener: (context, state) {},
                    builder: (context, state) {
                      return Form(
                        key: BlocProvider.of<AuthCubit>(context)
                            .forgetPasswordKey,
                                //!email
                        child: CustomTextFormField(
                          keyboardType: TextInputType.emailAddress,
                          controller: BlocProvider.of<AuthCubit>(context)
                              .forgetPasswordEmailController,
                          labeltext: AppStrings.email,
                          prefixIcon: const Icon(Icons.email),
                          validate: (data) {
                            if (data!.isEmpty || !data.contains('@gmail.com')) {
                              return AppStrings.enterValidEmail;
                            }
                            return null;
                          },
                        ),
                      );
                    },
                  ),
                  SizedBox(
                    height: 30.h,
                  ),
                  CustomBtn(
                    onPressed: () {
                      BlocProvider.of<AuthCubit>(context)
                          .forgetPasswordKey
                          .currentState!
                          .validate();
                      {
                        customReplacementNavigate(
                            context, "/ResetePasswordView");
                      }
                    },
                    text: AppStrings.sendCode,
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
