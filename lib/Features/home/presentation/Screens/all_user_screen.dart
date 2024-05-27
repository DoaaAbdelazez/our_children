import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:our_children/Features/home/presentation/Screens/child_info_screen.dart';
import 'package:our_children/Features/home/presentation/home_cubit/cubit/home_cubit.dart';
import 'package:our_children/core/utils/app_assets.dart';
import 'package:our_children/core/utils/app_strings.dart';
import 'package:our_children/core/utils/app_text_style.dart';
import 'package:our_children/core/widgets/custom_loading_indicator.dart';

class AllUserScreen extends StatelessWidget {
  const AllUserScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocConsumer<HomeCubit, HomeState>(
        listener: (context, state) {
          if (state is GetAllFacesSuccessState) {
            ScaffoldMessenger.of(context).showSnackBar(
              const SnackBar(
                content: Text("تمت بنجاح"),
              ),
            );
          } else if (state is GetAllFacesErrorState) {
            ScaffoldMessenger.of(context).showSnackBar(
              const SnackBar(
                content: Text("حدث خطأ"),
              ),
            );
          }
        },
        builder: (context, state) {
          return Stack(
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
                    const Text(
                      AppStrings.searchFamily,
                      style: CustomTextStyle.cairo400style30,
                    ),
                    state is GetAllFacesLoadingState
                        ? const CusotmLoadingIndicator()
                        : state is GetAllFacesSuccessState
                            ? Expanded(
                                child: GridView.builder(
                                  shrinkWrap: true,
                                  gridDelegate:
                                      const SliverGridDelegateWithFixedCrossAxisCount(
                                          crossAxisCount: 2),
                                  itemBuilder: (context, index) {
                                    return GestureDetector(
                                      onTap: () {
                                        BlocProvider.of<HomeCubit>(context)
                                            .getPersonInfo(
                                                state.allFaces[index].id);
                                        Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                                builder: ((context) =>
                                                    ChildInfoScreen(
                                                        personModel:
                                                            state.allFaces[
                                                                index]))));
                                      },
                                      child: Card(
                                        child: Image.memory(base64Decode(
                                            state.allFaces[index].image)),
                                      ),
                                    );
                                  },
                                  itemCount: state.allFaces.length,
                                ),
                              )
                            : const SizedBox(),
                  ],
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}
