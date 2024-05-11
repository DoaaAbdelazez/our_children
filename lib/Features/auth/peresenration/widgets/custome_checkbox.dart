import 'package:flutter/material.dart';
import 'package:our_children/core/utils/app_colors.dart';

class CustomCheckBox extends StatefulWidget {
  const CustomCheckBox({super.key});

  @override
  State<CustomCheckBox> createState() => _CustomCheckBoxState();
}

class _CustomCheckBoxState extends State<CustomCheckBox> {
  bool value = false;
  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: Checkbox(
        side: const BorderSide(
          color: AppColors.black,
        ),
        checkColor: AppColors.white,
        value: value,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(50)),
        onChanged: (newValue) {
          setState(() {
            value = newValue!;
          });
        },
      ),
    );
  }
}
