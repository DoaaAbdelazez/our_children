import 'package:flutter/material.dart';
import 'package:our_children/core/utils/app_colors.dart';

class CustomCheckBoxGander extends StatefulWidget {
  const CustomCheckBoxGander({super.key});

  @override
  State<CustomCheckBoxGander> createState() => _CustomCheckBoxGanderState();
}

class _CustomCheckBoxGanderState extends State<CustomCheckBoxGander> {
  bool value = false;
  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child:
//Radio(value: value, groupValue: groupValue, onChanged: (newValue){
// setState(() {
//   value = newValue!;
// });
//        })
          Checkbox(
        side: const BorderSide(
          color: AppColors.lightGry,
        ),
        checkColor: AppColors.white,
        value: value,
        // shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(50)),
        onChanged: (newValue) {
          setState(() {
            value = newValue!;
          });
        },
      ),
    );
  }
}
