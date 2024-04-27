import 'package:flutter/material.dart';

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
