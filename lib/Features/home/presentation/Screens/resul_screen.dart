import 'package:flutter/material.dart';
import 'package:our_children/core/utils/app_assets.dart';

class ResulteScreen extends StatelessWidget {
  const ResulteScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: [
          //!backGround
          Image.asset(
            Assets.assetsImagesBackgroundone,
            fit: BoxFit.cover,
          ),
          Column(
            children: [
              //!logo
              Padding(
                padding: const EdgeInsets.all(55),
                child: Image.asset(
                  Assets.assetsImagesLogo,
                  width: 200,
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
