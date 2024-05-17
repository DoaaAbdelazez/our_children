import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:our_children/Features/home/presentation/widgets/custom_check_box_gander.dart';
import 'package:our_children/core/utils/app_assets.dart';
import 'package:our_children/core/utils/app_colors.dart';
import 'package:our_children/core/utils/app_text_style.dart';
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
            child: SingleChildScrollView(
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
                  Container(
                    alignment: Alignment.center,
                    width: 243.w,
                    height: 203.h,
                    decoration: BoxDecoration(
                        color: AppColors.white,
                        borderRadius: BorderRadius.circular(15)),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        children: [
                          Text(
                            AppStrings.clickToUploadPic,
                            style: CustomTextStyle.cairo400style20,
                          ),
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
                  //!Forms
                  //Name
                  Text(
                    AppStrings.nameLose,
                    style: CustomTextStyle.aJannatLT400style24,
                  ),
                  SizedBox(height: 65.h, child: const CustomTextForm()),
                  SizedBox(
                    height: 12.h,
                  ),
                  //age
                  Text(
                    AppStrings.ageLose,
                    style: CustomTextStyle.aJannatLT400style24,
                  ),
                  SizedBox(height: 65.h, child: const CustomTextForm()),

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
                          const CustomCheckBoxGander(),
                          Text(
                            AppStrings.boy,
                            style: CustomTextStyle.aJannatLT400style24,
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
                            style: CustomTextStyle.aJannatLT400style24,
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
                  SizedBox(height: 65.h, child: const CustomTextForm()),
                  SizedBox(
                    height: 12.h,
                  ),
                  //Phone number
                  Text(
                    AppStrings.phoneNumber,
                    style: CustomTextStyle.aJannatLT400style24,
                  ),
                  SizedBox(height: 65.h, child: const CustomTextForm()),
                  SizedBox(
                    height: 12.h,
                  ),
                  //!bttn
                  CustomButtnHome(
                    onPressed: () {},
                    text: AppStrings.done,
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
