import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:spinfast/utils/extensions/extensions.dart';

import '../../../utils/values/my_colors.dart';
import '../../../utils/values/my_images.dart';
import '../../../utils/values/styles.dart';

class ProfileOptionWidget extends StatelessWidget {

  final String image;
  final String text;
  final VoidCallback onTap;
  final Color? textColour;
  final Color? iconColor;

  const ProfileOptionWidget({Key? key, required this.onTap, required this.text, required this.image, this.iconColor, this.textColour}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Row(
        children: [
          Image.asset(image, height: 21.h, width: 21.w,),
          7.sbw,
          Text(text, style: kSize12DarkW500Text.copyWith(color: textColour ?? MyColors.black),),
          Spacer(),
          Icon(Icons.arrow_forward_ios, size: 16.h, color: iconColor ?? MyColors.black,)
        ],
      ),
    );
  }
}
