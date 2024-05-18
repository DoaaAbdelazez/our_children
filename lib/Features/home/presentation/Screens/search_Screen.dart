import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:our_children/Features/home/presentation/home_cubit/cubit/home_cubit.dart';
import 'package:our_children/Features/home/presentation/widgets/custom_check_box_gander.dart';
import 'package:our_children/core/utils/app_assets.dart';
import 'package:our_children/core/utils/app_colors.dart';
import 'package:our_children/core/utils/app_text_style.dart';
import '../../../../core/utils/app_strings.dart';
import '../widgets/custom_text_form.dart';
import '../widgets/custombuttn.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({super.key});

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
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
            child: SingleChildScrollView(
              child: Column(
                children: [
                  //! search_Text
                  Padding(
                    padding: const EdgeInsets.only(top: 10),
                    child: Text(
                      AppStrings.search,
                      style: CustomTextStyle.cairo400style30,
                    ),
                  ),
                  SizedBox(
                    height: 12.h,
                  ),
                  //!ImagePicker
                  Container(
                    alignment: Alignment.center,
                    width: 243.w,
                    height: 195.h,
                    decoration: BoxDecoration(
                        color: AppColors.white,
                        borderRadius: BorderRadius.circular(15)),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        children: [
                          //!clickhere text
                          Text(
                            AppStrings.clickToUploadPic,
                            style: CustomTextStyle.cairo400style20,
                          ),
                          //!camira icon
                          GestureDetector(
                            child: const Icon(
                              Icons.camera_alt_outlined,
                              size: 150,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 12.h,
                  ),
                  BlocConsumer<HomeCubit, HomeState>(
                    listener: (context, state) {},
                    builder: (context, state) {
                      return Form(
                        key: BlocProvider.of<HomeCubit>(context).searchKey,
                        //!Forms
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
                                    .nameSearchController,
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
                              height: 65.h,
                              child: CustomTextForm(
                                controller: BlocProvider.of<HomeCubit>(context)
                                    .ageSearchController,
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
                                    //  Radio(value: value, groupValue: groupValue, onChanged: onChanged),
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
                                    const CustomCheckBoxGander(),
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
                                          .citySearchController,
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
                                          .phoneSearchController,
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
                            CustomButtnHome(
                              onPressed: () {
                                if (BlocProvider.of<HomeCubit>(context)
                                    .searchKey
                                    .currentState!
                                    .validate()) ;
                              },
                              text: AppStrings.done,
                            ),
                          ],
                        ),
                      );
                    },
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
