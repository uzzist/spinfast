import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:spinfast/utils/extensions/extensions.dart';

import '../../../utils/values/my_colors.dart';
import '../../../utils/values/my_images.dart';
import '../../../utils/values/styles.dart';

class NotificationWidget extends StatelessWidget {
  const NotificationWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
          color: MyColors.white,
          boxShadow: [
            BoxShadow(
              offset: Offset(0,7),
              blurRadius: 40,
              color: MyColors.black.withOpacity(.1),
            )
          ]
      ),
      padding: EdgeInsets.only(left: 12.w, top: 13.h, bottom: 13.h),
      child: Row(
        children: [
          Image.asset(MyImages.notification, height: 43.h, width: 43.w,),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Notification 1', style: kSize12DarkW500Text.copyWith(fontWeight: FontWeight.w600),),
                  140.sbw,
                  Text('8:30 PM', style: kSize12DarkW500Text.copyWith(fontSize: 10.sp, color: MyColors.black.withOpacity(.4)),)
                ],
              ),
              Text('Unlock exclusive offers tailored just for you. Don\'t miss out on\nopportunities to enjoy additional perks and discounts', style: kSize12DarkW500Text.copyWith(fontSize: 8.sp),)
            ],
          )
        ],
      ),
    );
  }
}
