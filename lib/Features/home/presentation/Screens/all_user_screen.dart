import 'package:flutter/material.dart';
import 'package:our_children/Features/home/presentation/widgets/custombuttn.dart';
import 'package:our_children/core/utils/app_assets.dart';

import 'package:our_children/core/utils/app_strings.dart';
import 'package:our_children/core/utils/app_text_style.dart';

class AllUserScreen extends StatelessWidget {
  const AllUserScreen({super.key});

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
            padding: const EdgeInsets.all(50),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                //!text
                Text(
                  AppStrings.searchFamily,
                  style: CustomTextStyle.cairo400style30,
                ),
                Expanded(
                  child: GridView.builder(
                    shrinkWrap: true,
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 2),
                    itemBuilder: (context, index) {
                      return Card(
                        child: Center(child: Text('Item $index')),
                      );
                    },
                    itemCount: 6,
                  ),
                ),
                CustomButtnHome(
                  onPressed: () {},
                  text: AppStrings.done,
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
