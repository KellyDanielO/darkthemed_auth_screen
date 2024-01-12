import 'package:auth_screen/constants/colors.dart';
import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final String text;
  final void Function() onPressed;
  final double width;
  const CustomButton(
      {super.key,
      required this.text,
      required this.onPressed,
      required this.width});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPressed,
      borderRadius: BorderRadius.circular(16),
      
      child: Container(
        width: width,
        decoration: BoxDecoration(
          gradient: const LinearGradient(
            colors: AppColors.gradient,
          ),
          borderRadius:
              BorderRadius.circular(16.0), // Match the shape's border radius
        ),
        alignment: Alignment.center,
        padding: const EdgeInsets.symmetric(vertical: 15.0),
        child: Text(
          text,
          style: const TextStyle(
            color: AppColors.color,
            fontSize: 18.0,
            fontWeight: FontWeight.bold
          ),
        ),
      ),
    );
  }
}
