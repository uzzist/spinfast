import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:spinfast/utils/values/my_colors.dart';

class CustomButton extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;
  final double? height;
  final double? width;
  final Color? backgroundColor;
  final Color? textColor;
  final double? fontSize;
  final double? borderRadius;

  CustomButton({required this.text, required this.onPressed, this.height, this.width, this.textColor, this.backgroundColor, this.borderRadius, this.fontSize});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height ?? 42.h,
      width: width ?? 235.w,
      child: TextButton(
        onPressed: onPressed,
        style: TextButton.styleFrom(
          backgroundColor: backgroundColor ?? MyColors.primary,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(borderRadius ?? 34.r),
          ),
          splashFactory: InkRipple.splashFactory, // Optional splash effect
        ),
        child: Center(
          child: Text(
            text,
            style: TextStyle(
              color: MyColors.white,
              fontSize: fontSize ?? 14.sp,
              fontFamily: 'Poppins',
              fontWeight: FontWeight.w700,
            ),
          ),
        ),
      ),
    );
  }
}
