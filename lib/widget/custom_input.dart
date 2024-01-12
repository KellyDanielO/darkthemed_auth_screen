import 'package:auth_screen/constants/colors.dart';
import 'package:flutter/material.dart';

class CustomInput extends StatelessWidget {
  final String hintText;
  final TextEditingController controller;
  final bool isObsecure;
  const CustomInput(
      {super.key,
      required this.hintText,
      required this.controller,
      required this.isObsecure});

  @override
  Widget build(BuildContext context) {
    return TextField(
      style: const TextStyle(color: AppColors.color),
      controller: controller,
      obscureText: isObsecure,
      decoration: InputDecoration(
        filled: true,
        fillColor: AppColors.shadeColor,
        enabledBorder: OutlineInputBorder(
          borderSide: const BorderSide(width: 3),
          borderRadius: BorderRadius.circular(15),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(
              color: AppColors.primaryColor1.withOpacity(.6), width: 3),
          borderRadius: BorderRadius.circular(15),
        ),
        contentPadding: const EdgeInsets.symmetric(horizontal: 25, vertical: 20),
        hintText: hintText,
        hintStyle: TextStyle(color: AppColors.color.withOpacity(.6),)
      ),
    );
  }
}
