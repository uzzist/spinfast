import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:spinfast/utils/extensions/extensions.dart';
import 'package:spinfast/utils/values/my_colors.dart';
import 'package:spinfast/utils/values/styles.dart';

class FavouritesScreen extends StatelessWidget {
  const FavouritesScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Container(
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
        centerTitle: true,
        title: Text('Your favorites', style: kSize14DarkW500Text.copyWith(fontWeight: FontWeight.w600),),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 22.w, vertical: 12.h),
        child: GridView.builder(
          shrinkWrap: true,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2, // 2 items in a row
            crossAxisSpacing: 6.0, // spacing between items
            mainAxisSpacing: 6.0,
            childAspectRatio: 0.8
          ),
          itemBuilder: (BuildContext context, int index) {
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
                          color: MyColors.primary
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
          },
          itemCount: 4, // You can change this to the actual number of items you have
        ),
      ),
    );
  }
}
