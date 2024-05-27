import 'dart:convert';
import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:image_picker/image_picker.dart';
import 'package:our_children/Features/home/data/models/search_result_model.dart';
import 'package:our_children/Features/home/presentation/Screens/child_info_screen.dart';
import 'package:our_children/Features/home/presentation/home_cubit/cubit/home_cubit.dart';
import 'package:our_children/core/utils/app_assets.dart';
import 'package:our_children/core/utils/app_colors.dart';

class ResulteScreen extends StatelessWidget {
  const ResulteScreen(
      {super.key, required this.resultModel, required this.yourImage});
  final SearchResultModel resultModel;
  final XFile yourImage;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocConsumer<HomeCubit, HomeState>(
        listener: (context, state) {},
        builder: (context, state) {
          return Stack(
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
                  Column(
                    children: [
                      GestureDetector(
                        onTap: () {},
                        child: Container(
                          alignment: Alignment.center,
                          width: 300,
                          height: 150,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                                image: FileImage(File(yourImage.path))),
                            borderRadius: BorderRadius.circular(20),
                            color: AppColors.white,
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      Column(
                        children: [
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              GestureDetector(
                                onTap: () {
                                  BlocProvider.of<HomeCubit>(context)
                                      .getPersonInfo(resultModel.nearestFaces[0].id);
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: ((context) =>
                                              ChildInfoScreen(
                                                  personModel: resultModel
                                                      .nearestFaces[0]))));
                                },
                                child: Container(
                                  alignment: Alignment.center,
                                  width: 150,
                                  height: 150,
                                  decoration: BoxDecoration(
                                    image: DecorationImage(
                                        image: MemoryImage(base64Decode(
                                            resultModel
                                                .nearestFaces[0].image))),
                                    borderRadius: BorderRadius.circular(20),
                                    color: AppColors.white,
                                  ),
                                ),
                              ),
                              const SizedBox(
                                width: 15,
                              ),
                              GestureDetector(
                                onTap: () {
                                  BlocProvider.of<HomeCubit>(context)
                                      .getPersonInfo(resultModel.nearestFaces[1].id);
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: ((context) =>
                                              ChildInfoScreen(
                                                  personModel: resultModel
                                                      .nearestFaces[1]))));
                                },
                                child: Container(
                                  alignment: Alignment.center,
                                  width: 150,
                                  height: 150,
                                  decoration: BoxDecoration(
                                    image: DecorationImage(
                                        image: MemoryImage(base64Decode(
                                            resultModel
                                                .nearestFaces[1].image))),
                                    borderRadius: BorderRadius.circular(20),
                                    color: AppColors.white,
                                  ),
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              GestureDetector(
                                onTap: () {
                                  BlocProvider.of<HomeCubit>(context)
                                      .getPersonInfo(resultModel.nearestFaces[2].id);
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: ((context) =>
                                              ChildInfoScreen(
                                                  personModel: resultModel
                                                      .nearestFaces[2]))));
                                },
                                child: Container(
                                  alignment: Alignment.center,
                                  width: 150,
                                  height: 150,
                                  decoration: BoxDecoration(
                                    image: DecorationImage(
                                        image: MemoryImage(base64Decode(
                                            resultModel
                                                .nearestFaces[2].image))),
                                    borderRadius: BorderRadius.circular(20),
                                    color: AppColors.white,
                                  ),
                                ),
                              ),
                              const SizedBox(
                                width: 15,
                              ),
                              GestureDetector(
                                onTap: () {
                                  BlocProvider.of<HomeCubit>(context)
                                      .getPersonInfo(resultModel.nearestFaces[3].id);
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: ((context) =>
                                              ChildInfoScreen(
                                                  personModel: resultModel
                                                      .nearestFaces[3]))));
                                },
                                child: Container(
                                  alignment: Alignment.center,
                                  width: 150,
                                  height: 150,
                                  decoration: BoxDecoration(
                                    image: DecorationImage(
                                        image: MemoryImage(base64Decode(
                                            resultModel
                                                .nearestFaces[3].image))),
                                    borderRadius: BorderRadius.circular(20),
                                    color: AppColors.white,
                                  ),
                                ),
                              ),
                            ],
                          )
                        ],
                      )
                    ],
                  ),
                ],
              )
            ],
          );
        },
      ),
    );
  }
}
