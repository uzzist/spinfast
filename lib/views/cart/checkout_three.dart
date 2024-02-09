import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:spinfast/utils/extensions/extensions.dart';
import 'package:spinfast/views/widgets/custom_appbar.dart';

import '../../utils/values/my_colors.dart';
import '../../utils/values/styles.dart';

class CheckoutThreeScreen extends StatelessWidget {
  const CheckoutThreeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        title: 'Checkout',
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 22.w),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            20.sbh,
            Row(
              children: [
                Container(
                  height: 22.h,
                  width: 22.w,
                  decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: MyColors.primary
                  ),
                  child: Center(
                    child: Text('1', style: kSize12DarkW500Text.copyWith(fontWeight: FontWeight.w700, color: MyColors.white),),
                  ),
                ),
                4.sbw,
                SizedBox(
                  width: 119.w,
                  child: Divider(),
                ),
                4.sbw,
                Container(
                  height: 22.h,
                  width: 22.w,
                  decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: MyColors.primary
                  ),
                  child: Center(
                    child: Text('2', style: kSize12DarkW500Text.copyWith(fontWeight: FontWeight.w700, color: MyColors.white),),
                  ),
                ),
                4.sbw,
                SizedBox(
                  width: 119.w,
                  child: Divider(),
                ),
                4.sbw,
                Container(
                  height: 22.h,
                  width: 22.w,
                  decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: MyColors.primary
                  ),
                  child: Center(
                    child: Text('3', style: kSize12DarkW500Text.copyWith(fontWeight: FontWeight.w700, color: MyColors.white),),
                  ),
                ),
              ],
            ),
            Row(
              children: [
                Text('Schedule Service', style: kSize12DarkW500Text.copyWith(color: MyColors.primary, fontSize: 10.sp),),
                35.sbw,
                Text('Billing details', style: kSize12DarkW500Text.copyWith(color: MyColors.primary, fontSize: 10.sp),),
                35.sbw,
                Text('Payment method', style: kSize12DarkW500Text.copyWith(color: MyColors.primary, fontSize: 10.sp),),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
