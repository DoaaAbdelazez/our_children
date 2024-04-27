import 'package:flutter/material.dart';
import 'package:our_children/core/utils/app_colors.dart';

abstract class CustomTextStyle {
  static final inter700style24 =  TextStyle(
      fontSize: 24,
      fontWeight: FontWeight.w700,
      color: AppColors.white,
      fontFamily: "Inter");
  static final inter700style28 = const TextStyle(
      fontSize: 28,
      fontWeight: FontWeight.w800,
      color: AppColors.primaryColor,
      fontFamily: "Inter");

  static final almarai400style14 = const TextStyle(
      fontSize: 14,
      fontWeight: FontWeight.w400,
      color: AppColors.white,
      fontFamily: "Almarai");

  static final cairo700style50 = const TextStyle(
      fontSize: 50,
      fontWeight: FontWeight.w700,
      color: AppColors.white,
      fontFamily: "Cairo");
  static final cairo400style20 = const TextStyle(
      fontSize: 15,
      fontWeight: FontWeight.w400,
      color: AppColors.black,
      fontFamily: "Cairo");
  static final cairo700style20 = const TextStyle(
      fontSize: 20,
      fontWeight: FontWeight.w400,
      color: AppColors.white,
      fontFamily: "Cairo");
  static final cairo400style15 = const TextStyle(
      fontSize: 15,
      fontWeight: FontWeight.w400,
      color: AppColors.black,
      fontFamily: "Cairo");
}
