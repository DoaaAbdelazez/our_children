import 'package:flutter/material.dart';
import 'package:our_children/core/utils/app_assets.dart';
import 'package:our_children/core/utils/app_colors.dart';
import 'package:our_children/core/utils/app_strings.dart';

class SplashView extends StatelessWidget {
  const SplashView({super.key});

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
              Stack(
                alignment: Alignment.center,
                children: [
                  Container(
                    width: 153,
                    height: 150,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(500),
                        color: AppColors.white),
                  ),
                  SizedBox(
                      width: 145,
                      height: 180,
                      child: Padding(
                        padding: const EdgeInsets.only(top: 18, bottom: 1),
                        child: Image.asset(Assets.assetsImagesLogo),
                      )),
                ],
              ),
              const SizedBox(
                height: 16,
              ),
              const Text(
                AppStrings.appName,
                style: TextStyle(
                    color: AppColors.white,
                    fontSize: 25,
                    fontWeight: FontWeight.bold),
              )
            ],
          ),
        ),
      ),
    );
  }
}
