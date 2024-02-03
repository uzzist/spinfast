import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import '../../utils/values/my_colors.dart';
import '../../utils/values/styles.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget{

  final String title;
  final Color? backgroundColor;
  final Color? textColor;

  const CustomAppBar({Key? key, required this.title, this.backgroundColor, this.textColor}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: backgroundColor ?? MyColors.white,
      leading: GestureDetector(
        onTap: () {
          Get.back();
        },
        child: Container(
          margin: EdgeInsets.symmetric(vertical: 16.h),
          height: 22.h,
          width: 22.w,
          decoration: BoxDecoration(
              color: MyColors.white,
              shape: BoxShape.circle,
              boxShadow: [
                BoxShadow(
                    offset: Offset(0,4),
                    spreadRadius: 0,
                    blurRadius: 5,
                    color: MyColors.black.withOpacity(.2)
                )
              ]
          ),
          child: Center(
            child: Icon(Icons.arrow_back_ios_new_sharp, size: 12.h,),
          ),
        ),
      ),
      centerTitle: true,
      title: Text(title, style: kSize14DarkW500Text.copyWith(fontWeight: FontWeight.w600, color: textColor ?? MyColors.black),),
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);
}
