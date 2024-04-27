import 'package:flutter/material.dart';
import 'package:our_children/core/utils/app_colors.dart';

abstract class CustomTextStyle {
  static final inter700style24 = TextStyle(
      fontSize: 24,
      fontWeight: FontWeight.w700,
      color: AppColors.white,
      fontFamily: "Inter");

  static final almarai400style14 = TextStyle(
      fontSize: 14,
      fontWeight: FontWeight.w400,
      color: AppColors.black,
      fontFamily: "Almarai");

  static final cairo700style40 = TextStyle(
      fontSize: 40,
      fontWeight: FontWeight.w700,
      color: AppColors.white,
      fontFamily: "Cairo");
  static final cairo400style20 = TextStyle(
      fontSize: 16,
      fontWeight: FontWeight.w400,
      color: AppColors.black,
      fontFamily: "Cairo");
}
