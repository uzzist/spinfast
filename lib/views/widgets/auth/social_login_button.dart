import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../utils/values/my_colors.dart';
import '../../../utils/values/my_images.dart';

class SocialLoginButton extends StatelessWidget {

  final String image;
  final VoidCallback onTap;

  SocialLoginButton({required this.onTap, required this.image});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        width: 63.w,
        height: 44.h,
        decoration: BoxDecoration(
          color: MyColors.white,
          borderRadius: BorderRadius.circular(34.r),
          boxShadow: [
            BoxShadow(
              color: Color(0x0F000000),
              blurRadius: 12.30,
              offset: Offset(0, 4),
              spreadRadius: 0,
            )
          ],
        ),
        child: Center(
          child: Image.asset(image, height: 20.h, width: 20.w,),
        ),
      ),
    );
  }
}
