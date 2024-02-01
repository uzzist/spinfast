import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:spinfast/utils/extensions/extensions.dart';
import 'package:spinfast/utils/values/my_images.dart';
import 'package:spinfast/views/home/laundromats_screen.dart';

import '../../../utils/values/my_colors.dart';
import '../../../utils/values/styles.dart';

class ServicesWidget extends StatelessWidget {
  const ServicesWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        GestureDetector(
          onTap: () {
            Get.to(() => LaundromatsScreen());
          },
          child: Container(
            width: 63.w,
            height: 64.h,
            decoration: ShapeDecoration(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(24),
                  topRight: Radius.circular(24),
                  bottomRight: Radius.circular(24),
                ),
              ),
              image: DecorationImage(
                image: AssetImage(MyImages.laundry),
                fit: BoxFit.cover
              )
            ),
          ),
        ),
        6.sbh,
        Text(
          'Laundry',
          style: kSize12DarkW500Text,
        )
      ],
    );
  }
}
