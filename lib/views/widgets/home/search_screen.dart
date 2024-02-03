import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:spinfast/utils/extensions/extensions.dart';
import 'package:spinfast/views/widgets/custom_appbar.dart';

import '../../../utils/values/my_colors.dart';
import '../../../utils/values/my_images.dart';
import '../../../utils/values/styles.dart';

class SearchScreen extends StatelessWidget {
  SearchScreen({Key? key}) : super(key: key);

  final List<String> chipData = [
    'Immigration',
    'Opportunities',
    'Construction',
    'Renovations',
    'Driver',
    'Private transportations',
    'Legal',
    'Accounting',
    'Designer',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        title: 'Search',
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 22.w),
        child: Column(
          children: [
            Container(
              height: 39.h,
              width: 331.w,
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
                    suffixIcon: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Image.asset(
                        MyImages.filter,
                        height: 8.h,
                        width: 4.h,
                      ),
                    ),
                    hintText: 'Shop name or service',
                    hintStyle: kSize12DarkW500Text.copyWith(
                        color: MyColors.black.withOpacity(.2),
                        fontSize: 14.sp)),
              ),
            ),
            24.sbh,
            Row(
              children: [
                Text('Recent searches', style: kSize12DarkW500Text.copyWith(fontWeight: FontWeight.w600, color: MyColors.dark),),
                Spacer(),
                Text('Delete all', style: kSize12DarkW500Text.copyWith(fontSize: 10.sp, color: MyColors.primary),),

              ],
            ),
            Wrap(
              spacing: 8.0, // spacing between chips
              runSpacing: 8.0, // spacing between rows of chips
              children: List.generate(
                chipData.length,
                    (index) => Chip(
                  label: Text(
                    chipData[index],
                    style: kSize12DarkW500Text,
                  ),
                  backgroundColor: Color(0xFFEAECF0),
                  padding: EdgeInsets.symmetric(horizontal: 4.w),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(24.r),
                    side: BorderSide(color: Color(0xFFEAECF0))
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
