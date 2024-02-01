import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:spinfast/utils/extensions/extensions.dart';
import 'package:spinfast/utils/values/my_images.dart';

import '../../utils/values/my_colors.dart';
import '../../utils/values/styles.dart';

class LaundromatWidget extends StatelessWidget {
  const LaundromatWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 9.w),
      decoration: BoxDecoration(
        color: MyColors.white,
        borderRadius: BorderRadius.circular(8.78.r),
        boxShadow: [
          BoxShadow(
            color: Color(0x19000000),
            blurRadius: 12.30,
            offset: Offset(0, 4),
            spreadRadius: 0,
          )
        ],
      ),
      child: Stack(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              5.sbh,
              Container(
                height: 132.h,
                width: 144.w,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5.81.r),
                  image: DecorationImage(
                    image: AssetImage(MyImages.laundromat),
                    fit: BoxFit.cover
                  )
                ),
              ),
              3.sbh,
              Text('Werribee', style: kSize14DarkW500Text,),
              Row(
                children: [
                  Icon(Icons.place, color: MyColors.black.withOpacity(.4), size: 8.h,),
                  Text('Shop 8, 167 Shaws Road', style: kSize12DarkW500Text.copyWith(color: MyColors.black.withOpacity(.4), fontSize: 8.sp),)
                ],
              ),
              Row(
                children: [
                  Icon(Icons.access_time_filled, color: MyColors.black.withOpacity(.4), size: 8.h,),
                  Text('6:00am - midnight', style: kSize12DarkW500Text.copyWith(color: MyColors.black.withOpacity(.4), fontSize: 8.sp),)
                ],
              ),
              Row(
                children: [
                  RatingBar.builder(
                      itemSize: 8.h,
                      itemCount: 5,
                      direction: Axis.horizontal,
                      minRating: 1,
                      initialRating: 4,
                      itemBuilder: (context, _) => Icon(
                        Icons.star,
                        color: Colors.amber,
                      ),
                      onRatingUpdate: (value) {}
                  ),
                  Text('(150 reviews)', style: kSize12DarkW500Text.copyWith(color: MyColors.black.withOpacity(.4), fontSize: 8.sp),)
                ],
              ),
            ],
          ),
          Positioned(
            right: 8.w,
            top: 12.h,
            child: Container(
              height: 28,
              width: 28,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: MyColors.white,
              ),
              child: Center(
                child: Icon(Icons.favorite, color: MyColors.red, size: 16.h,),
              ),
            ),
          )
        ],
      ),
    );
  }
}
