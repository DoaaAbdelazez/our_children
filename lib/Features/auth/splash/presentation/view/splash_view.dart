import 'package:flutter/material.dart';
import 'package:our_children/core/utils/app_assets.dart';
import 'package:our_children/core/utils/app_strings.dart';

import '../../../../../core/functions/navigation.dart';
import '../../../../../core/utils/app_text_style.dart';

class SplashView extends StatefulWidget {
  const SplashView({super.key});

  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {
  @override
  void initState() {
    delayedNavigate(context);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage(Assets.assetsImagesSplashscreen),
            fit: BoxFit.cover,
          ),
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.asset(Assets.assetsImagesLogo),
              Text(
                AppStrings.appName,
                style: CustomTextStyle.inter700style24,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

void delayedNavigate(context) {
  Future.delayed(const Duration(seconds: 2), () {
    customReplacementNavigate(context, "/SignUpView");
  });
}
