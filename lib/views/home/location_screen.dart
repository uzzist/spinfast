import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:spinfast/utils/extensions/extensions.dart';

import '../../utils/values/my_colors.dart';
import '../../utils/values/my_images.dart';
import '../../utils/values/styles.dart';
import '../widgets/custom_appbar.dart';

class LocationScreen extends StatelessWidget {
  const LocationScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        title: 'Your location',
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 22.w),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Enter your address', style: kSize12DarkW500Text,),
            8.sbh,
            Row(
              children: [
                Container(
                  height: 39.h,
                  width: 280.w,
                  decoration: BoxDecoration(
                      color: MyColors.white,
                      boxShadow: [
                        BoxShadow(
                            offset: Offset(0,4),
                            color: MyColors.black.withOpacity(.1),
                            blurRadius: 12,
                            spreadRadius: 0
                        ),
                      ],
                      borderRadius: BorderRadius.circular(8.r)
                  ),
                  child: TextFormField(
                    cursorHeight: 20.h,
                    style: kSize14DarkW500Text.copyWith(height: 1.3),
                    decoration: InputDecoration(
                        border: InputBorder.none,
                        prefixIcon: Icon(
                          Icons.search,
                          color: MyColors.black.withOpacity(.2),
                        ),
                        hintText: 'Search',
                        hintStyle: kSize12DarkW500Text.copyWith(
                            color: MyColors.black.withOpacity(.2),
                            fontSize: 14.sp)),
                  ),
                ),
                8.sbw,
                GestureDetector(
                  onTap: () {

                  },
                  child: Container(
                    height: 40.h,
                    width: 40.w,
                    decoration: BoxDecoration(
                        color: MyColors.white,
                        boxShadow: [
                          BoxShadow(
                              offset: Offset(0,4),
                              color: MyColors.black.withOpacity(.1),
                              blurRadius: 12,
                              spreadRadius: 0
                          ),
                        ],
                        borderRadius: BorderRadius.circular(8.r)
                    ),
                    padding: EdgeInsets.all(8),
                    child: Center(
                      child: Icon(Icons.my_location, color: MyColors.primary,),
                    ),
                  ),
                )
              ],
            ),

          ],
        ),
      ),
    );
  }
}
