import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:spinfast/utils/extensions/extensions.dart';
import 'package:spinfast/utils/values/my_images.dart';
import 'package:spinfast/utils/values/styles.dart';

import '../../utils/values/my_colors.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyColors.primary.withOpacity(.2),
      body: Column(
        children: [
          Container(
            padding: EdgeInsets.symmetric(horizontal: 22.w),
            width: double.infinity,
            child: Column(
              children: [
                50.sbh,
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Image.asset(MyImages.profile_picture, height: 36.h, width: 36.w,),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Icon(Icons.location_on, color: MyColors.dark, size: 15.h,),
                            Text('Munich Center', style: kSize12DarkW500Text.copyWith(fontWeight: FontWeight.w600, color: MyColors.dark),),
                            Icon(Icons.arrow_drop_down_outlined, color: MyColors.dark,)
                          ],
                        ),
                        Text(' Hello Criss Germano, 👋', style: kSize12DarkW500Text.copyWith(fontWeight: FontWeight.w400),)
                      ],
                    ),
                    Spacer(),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Image.asset(MyImages.qr_scanner, height: 50.h, width: 50.w,),
                        Image.asset(MyImages.notification, height: 50.h, width: 50.w,),
                      ],
                    )
                  ],
                ),
                20.sbh,
                Container(
                  height: 39.h,
                  width: 331.w,
                  color: MyColors.white,
                  child: TextFormField(
                    cursorHeight: 20.h,
                    style: kSize14DarkW500Text.copyWith(height: 1.3),
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      prefixIcon: Icon(Icons.search, color: MyColors.black.withOpacity(.2),),
                      suffixIcon: Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Image.asset(MyImages.filter, height: 8.h, width: 4.h,),
                      ),
                      hintText: 'search',
                      hintStyle: kSize12DarkW500Text.copyWith(color: MyColors.black.withOpacity(.2), fontSize: 14.sp)
                    ),
                  ),
                ),
                20.sbh,
              ],
            ),
          ),
          Expanded(
              child: Container(
                width: double.infinity,
                decoration: BoxDecoration(
                  color: MyColors.white,
                  borderRadius: BorderRadius.only(topRight: Radius.circular(24.r), topLeft: Radius.circular(24.r))
                ),
                padding: EdgeInsets.symmetric(horizontal: 24.w),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    20.sbh,
                    Text('Services', style: kSize14DarkW500Text.copyWith(fontWeight: FontWeight.w600),),
                    12.sbh,
                    SizedBox(
                      height: 90.h,
                      child: ListView.separated(
                        shrinkWrap: true,
                          scrollDirection: Axis.horizontal,
                          itemBuilder: (context, index) {
                            return Column(
                              children: [
                                Container(
                                  width: 63.w,
                                  height: 64.h,
                                  decoration: ShapeDecoration(
                                    color: MyColors.primary,
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.only(
                                        topLeft: Radius.circular(24),
                                        topRight: Radius.circular(24),
                                        bottomRight: Radius.circular(24),
                                      ),
                                    ),
                                  ),
                                ),
                                6.sbh,
                                Text('Laundry', style: kSize12DarkW500Text,)
                              ],
                            );
                          },
                          separatorBuilder: (context, index) => 12.sbw,
                          itemCount: 5
                      ),
                    ),
                    20.sbh,
                  ],
                ),
              )
          )
        ],
      ),

    );
  }
}
