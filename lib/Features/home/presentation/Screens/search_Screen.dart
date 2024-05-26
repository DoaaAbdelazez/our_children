import 'dart:io';

import 'package:flutter/material.dart';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:our_children/Features/home/presentation/Screens/resul_screen.dart';

import 'package:our_children/Features/home/presentation/home_cubit/cubit/home_cubit.dart';

import 'package:our_children/core/utils/app_assets.dart';
import 'package:our_children/core/utils/app_colors.dart';
import 'package:our_children/core/utils/app_text_style.dart';
import 'package:our_children/core/widgets/custom_loading_indicator.dart';
import '../../../../core/utils/app_strings.dart';
import '../widgets/custombuttn.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({super.key});

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<HomeCubit, HomeState>(
      listener: (context, state) {
        if (state is RecognizeFaceSuccessState) {
          if (state is AddfaceSuccessState) {
            Navigator.pop(context);
            ScaffoldMessenger.of(context).showSnackBar(
              const SnackBar(
                content: Text("تمت بنجاح"),
              ),
            );
          }
          // print(BlocProvider.of<HomeCubit>(context)
          //     .searchResultList!
          //     .nearestFaces[0]
          //     .image);
          Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => ResulteScreen(
                      yourImage: state.yourimage,
                      resultModel: state.resultModel,
                    )),
          );
        }
      },
      builder: (context, state) {
        return Scaffold(
          body: Stack(
            fit: StackFit.expand,
            children: [
              //! background
              Image.asset(
                Assets.assetsImagesBackgroundone,
                fit: BoxFit.cover,
              ),
              Padding(
                padding: const EdgeInsets.only(top: 250),
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      //! search_Text
                      const Padding(
                        padding: EdgeInsets.only(top: 10),
                        child: Text(
                          AppStrings.search,
                          style: CustomTextStyle.cairo400style30,
                        ),
                      ),
                      SizedBox(
                        height: 12.h,
                      ),
                      //!ImagePicker
                      Center(
                        child: GestureDetector(
                          onTap: () {
                            BlocProvider.of<HomeCubit>(context)
                                .imagePickerSearch();
                          },
                          child: Container(
                            alignment: Alignment.center,
                            width: 300.w,
                            height: 250.h,
                            decoration: BoxDecoration(
                                image: BlocProvider.of<HomeCubit>(context)
                                            .searchPic ==
                                        null
                                    ? null
                                    : DecorationImage(
                                        image: FileImage(File(
                                            BlocProvider.of<HomeCubit>(context)
                                                .searchPic!
                                                .path))),
                                color: AppColors.white,
                                borderRadius: BorderRadius.circular(15)),
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: SingleChildScrollView(
                                child: BlocProvider.of<HomeCubit>(context)
                                            .searchPic ==
                                        null
                                    ? const Column(
                                        children: [
                                          //!clickhere text
                                          Text(
                                            AppStrings.clickToUploadPic,
                                            style:
                                                CustomTextStyle.cairo400style20,
                                          ),
                                          //!camira icon

                                          Icon(
                                            Icons.camera_alt_outlined,
                                            size: 200,
                                          ),
                                        ],
                                      )
                                    : Container(),
                              ),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 100.h,
                      ),
                      //!bttn
                  state is RecognizeFaceLoadingState
                          ? const CusotmLoadingIndicator()
                          : CustomButtnHome(
                              onPressed: () {
                                if (BlocProvider.of<HomeCubit>(context)
                                        .searchPic !=
                                    null) {
                                  BlocProvider.of<HomeCubit>(context)
                                      .recognizeFace();
                                }
                              },
                              text: AppStrings.done,
                            ),
                    ],    
                  ),
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
