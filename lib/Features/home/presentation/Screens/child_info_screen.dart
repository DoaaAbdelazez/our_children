import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:our_children/Features/home/data/models/search_result_model.dart';
import 'package:our_children/Features/home/presentation/home_cubit/cubit/home_cubit.dart';
import 'package:our_children/Features/home/presentation/widgets/custombuttn.dart';
import 'package:our_children/core/utils/app_assets.dart';
import 'package:our_children/core/utils/app_colors.dart';
import 'package:our_children/core/widgets/custom_loading_indicator.dart';

class ChildInfoScreen extends StatelessWidget {
  const ChildInfoScreen({super.key, required this.personModel});
  final PersonModel personModel;
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
              Padding(
                padding: const EdgeInsets.only(top: 90),
                child: state is GetPersonInfoSuccessState
                    ? Column(
                        children: [
                          //!imageContainer
                          Container(
                            width: 250,
                            height: 200,
                            decoration: BoxDecoration(
                              color: AppColors.white,
                              image: DecorationImage(
                                  image: MemoryImage(
                                      base64Decode(personModel.image))),
                            ),
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          Container(
                            width: 300,
                            height: 45,
                            color: AppColors.white,
                            alignment: Alignment.center,
                            child: Text(state.homeRequestModel.data!.name!),
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          Container(
                            width: 300,
                            height: 45,
                            color: AppColors.white,
                            alignment: Alignment.center,
                            child: Text(state.homeRequestModel.data!.location!),
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          Container(
                            width: 300,
                            height: 45,
                            color: AppColors.white,
                            alignment: Alignment.center,
                            child:
                                Text(state.homeRequestModel.data!.governorate!),
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          Container(
                            width: 300,
                            height: 45,
                            color: AppColors.white,
                            alignment: Alignment.center,
                            child: Text(state.homeRequestModel.data!.gender!),
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          Container(
                            width: 300,
                            height: 45,
                            color: AppColors.white,
                            alignment: Alignment.center,
                            child: Text(state.homeRequestModel.data!.phone!),
                          ),
                          const SizedBox(
                            height: 100,
                          ),
                          CustomButtnHome(
                            text: 'حذف',
                            onPressed: () {
                            
                            },
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          CustomButtnHome(
                            text: 'ارجع',
                            onPressed: () {
                              Navigator.pop(context);
                            },
                          ),
                        ],
                      )
                    : state is GetPersonInfoLoadingState
                        ? const Center(child: CusotmLoadingIndicator())
                        : const SizedBox(),
              ),
            ],
          );
        },
      ),
    );
  }
}
