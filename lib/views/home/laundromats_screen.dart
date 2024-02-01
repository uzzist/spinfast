import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../../utils/values/my_colors.dart';
import '../../utils/values/styles.dart';
import '../widgets/laundromat_widget.dart';

class LaundromatsScreen extends StatelessWidget {
  const LaundromatsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
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
        title: Text('Laundry', style: kSize14DarkW500Text.copyWith(fontWeight: FontWeight.w600),),
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
            return LaundromatWidget();
          },
          itemCount: 4, // You can change this to the actual number of items you have
        ),
      ),
    );
  }
}
