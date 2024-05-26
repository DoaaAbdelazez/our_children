import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:our_children/Features/home/presentation/home_cubit/cubit/home_cubit.dart';
import 'package:our_children/core/functions/navigation.dart';
import 'package:our_children/core/utils/app_assets.dart';
import 'package:our_children/core/utils/app_colors.dart';
import 'package:our_children/core/utils/app_text_style.dart';
import 'package:our_children/core/widgets/custom_loading_indicator.dart';
import '../../../../core/utils/app_strings.dart';

import '../widgets/custom_text_form.dart';
import '../widgets/custombuttn.dart';

class ReportScreen extends StatefulWidget {
  const ReportScreen({super.key});

  @override
  State<ReportScreen> createState() => _ReportScreenState();
}

class _ReportScreenState extends State<ReportScreen> {
  @override
  Widget build(BuildContext context) {
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
            padding: const EdgeInsets.all(30),
            child: BlocConsumer<HomeCubit, HomeState>(
              listener: (context, state) {
                customNavigate(context, ('/ChooseScreenView'));
              },
              builder: (context, state) {
                return SingleChildScrollView(
                  child: Column(
                    children: [
                      //! Report_Text
                      Padding(
                        padding: const EdgeInsets.only(top: 10),
                        child: Text(
                          AppStrings.report,
                          style: CustomTextStyle.cairo400style30,
                        ),
                      ),
                      SizedBox(
                        height: 12.h,
                      ),
                      //!ImagePicker
                      GestureDetector(
                        onTap: () {
                          BlocProvider.of<HomeCubit>(context)
                              .imagePickerreport();
                        },
                        child: Container(
                          alignment: Alignment.center,
                          width: 243.w,
                          height: 203.h,
                          decoration: BoxDecoration(
                              image: BlocProvider.of<HomeCubit>(context)
                                          .reportPic ==
                                      null
                                  ? null
                                  : DecorationImage(
                                      image: FileImage(File(
                                          BlocProvider.of<HomeCubit>(context)
                                              .reportPic!
                                              .path))),
                              color: AppColors.white,
                              borderRadius: BorderRadius.circular(15)),
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: BlocProvider.of<HomeCubit>(context)
                                        .reportPic ==
                                    null
                                ? Column(
                                    children: [
                                      Text(
                                        AppStrings.clickToUploadPic,
                                        style: CustomTextStyle.cairo400style20,
                                      ),
                                      const Icon(
                                        Icons.camera_alt_outlined,
                                        size: 150,
                                      ),
                                    ],
                                  )
                                : Container(),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 12.h,
                      ),
                      //!Forms
                      Form(
                        key: BlocProvider.of<HomeCubit>(context).reportKey,
                        child: Column(
                          children: [
                            //Name
                            Text(
                              AppStrings.nameLose,
                              style: CustomTextStyle.aJannatLT400style24,
                            ),
                            SizedBox(
                              height: 65.h,
                              child: CustomTextForm(
                                validate: (data) {
                                  if (data!.isEmpty) {
                                    return AppStrings.enterName;
                                  }
                                  return null;
                                },
                                controller: BlocProvider.of<HomeCubit>(context)
                                    .nameReportController,
                              ),
                            ),
                            SizedBox(
                              height: 12.h,
                            ),
                            //age
                            Text(
                              AppStrings.ageLose,
                              style: CustomTextStyle.aJannatLT400style24,
                            ),
                            SizedBox(
                              height: 65,
                              width: double.infinity,
                              child: CustomTextForm(
                                controller: BlocProvider.of<HomeCubit>(context)
                                    .ageReportController,
                                validate: (data) {
                                  if (data!.isEmpty) {
                                    return AppStrings.enterAge;
                                  }
                                  return null;
                                },
                              ),
                            ),

                            SizedBox(
                              height: 12.h,
                            ),
                            //Gander
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                //boy
                                Row(
                                  children: [
                                    Radio(
                                      activeColor: AppColors.primaryColor,
                                      value: 'male',
                                      groupValue:
                                          BlocProvider.of<HomeCubit>(context)
                                              .groupValue,
                                      onChanged: (val) {
                                        BlocProvider.of<HomeCubit>(context)
                                            .changeGroupVal(val);
                                      },
                                    ),
                                    Text(
                                      AppStrings.boy,
                                      style:
                                          CustomTextStyle.aJannatLT400style24,
                                    ),
                                  ],
                                ),

                                SizedBox(
                                  width: 60.w,
                                ),
                                //girl
                                Row(
                                  children: [
                                    Radio(
                                      activeColor: AppColors.primaryColor,
                                      value: 'female',
                                      groupValue:
                                          BlocProvider.of<HomeCubit>(context)
                                              .groupValue,
                                      onChanged: (val) {
                                        BlocProvider.of<HomeCubit>(context)
                                            .changeGroupVal(val);
                                      },
                                    ),
                                    Text(
                                      AppStrings.girl,
                                      style:
                                          CustomTextStyle.aJannatLT400style24,
                                    ),
                                  ],
                                ),
                              ],
                            ),

                            SizedBox(
                              height: 12.h,
                            ),
                            //City
                            Text(
                              AppStrings.city,
                              style: CustomTextStyle.aJannatLT400style24,
                            ),
                            SizedBox(
                                height: 65.h,
                                child: CustomTextForm(
                                  controller:
                                      BlocProvider.of<HomeCubit>(context)
                                          .cityReportController,
                                  validate: (data) {
                                    if (data!.isEmpty) {
                                      return AppStrings.enterCity;
                                    }
                                    return null;
                                  },
                                )),
                            SizedBox(
                              height: 12.h,
                            ),
                            //Phone number
                            Text(
                              AppStrings.phoneNumber,
                              style: CustomTextStyle.aJannatLT400style24,
                            ),
                            SizedBox(
                                height: 65.h,
                                child: CustomTextForm(
                                  controller:
                                      BlocProvider.of<HomeCubit>(context)
                                          .phoneReportController,
                                  validate: (data) {
                                    if (data!.isEmpty) {
                                      return AppStrings.enterPhone;
                                    }
                                    return null;
                                  },
                                )),
                            SizedBox(
                              height: 12.h,
                            ),
                            //!bttn
                            state is CreateChildLoadingState
                                ? const CusotmLoadingIndicator()
                                : CustomButtnHome(
                                    onPressed: () {
                                      if (BlocProvider.of<HomeCubit>(context)
                                          .reportKey
                                          .currentState!
                                          .validate()) {
                                        BlocProvider.of<HomeCubit>(context)
                                            .createChild();
                                      }
                                      ;
                                    },
                                    text: AppStrings.done,
                                  ),
                          ],
                        ),
                      ),
                    ],
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
