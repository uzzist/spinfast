import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:spinfast/utils/extensions/extensions.dart';
import 'package:spinfast/utils/values/my_colors.dart';
import 'package:spinfast/utils/values/styles.dart';
import 'package:spinfast/views/cart/checkout_two.dart';
import 'package:spinfast/views/widgets/custom_appbar.dart';

import '../widgets/custom_button.dart';

class CheckoutOneScreen extends StatelessWidget {
  const CheckoutOneScreen({Key? key}) : super(key: key);

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
                      color: MyColors.silver
                  ),
                  child: Center(
                    child: Text('2', style: kSize12DarkW500Text.copyWith(fontWeight: FontWeight.w700, color: MyColors.black.withOpacity(.4)),),
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
                      color: MyColors.silver
                  ),
                  child: Center(
                    child: Text('3', style: kSize12DarkW500Text.copyWith(fontWeight: FontWeight.w700, color: MyColors.black.withOpacity(.4)),),
                  ),
                ),
              ],
            ),
            Text('Schedule Service', style: kSize12DarkW500Text.copyWith(color: MyColors.primary, fontSize: 10.sp),),
            40.sbh,
            Text('Select Date', style: kSize14DarkW500Text,),
            6.sbh,
            Row(
              children: [
                Expanded(
                  child: Container(
                    height: 37.h,
                    padding: EdgeInsets.symmetric(horizontal: 12.w),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(34.r),
                      color: MyColors.white,
                      boxShadow: [
                        BoxShadow(
                          offset: Offset(0,7),
                          blurRadius: 37,
                          spreadRadius: 0,
                          color: MyColors.black.withOpacity(.1)
                        )
                      ]
                    ),
                    child: Row(
                      children: [
                        Text('Pickup date', style: kSize12DarkW500Text.copyWith(color: MyColors.black.withOpacity(.4)),),
                        Spacer(),
                        Icon(Icons.calendar_month, color: MyColors.black.withOpacity(.4), size: 20.h,)
                      ],
                    ),
                  ),
                ),
                6.sbw,
                Expanded(
                  child: Container(
                    height: 37.h,
                    padding: EdgeInsets.symmetric(horizontal: 12.w),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(34.r),
                        color: MyColors.white,
                        boxShadow: [
                          BoxShadow(
                              offset: Offset(0,7),
                              blurRadius: 37,
                              spreadRadius: 0,
                              color: MyColors.black.withOpacity(.1)
                          )
                        ]
                    ),
                    child: Row(
                      children: [
                        Text('Delivery date', style: kSize12DarkW500Text.copyWith(color: MyColors.black.withOpacity(.4)),),
                        Spacer(),
                        Icon(Icons.calendar_month, color: MyColors.black.withOpacity(.4), size: 20.h,)
                      ],
                    ),
                  ),
                )
              ],
            ),
            12.sbh,
            Text('Select Time', style: kSize14DarkW500Text,),
            6.sbh,
            Row(
              children: [
                Expanded(
                  child: Container(
                    height: 37.h,
                    padding: EdgeInsets.symmetric(horizontal: 12.w),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(34.r),
                        color: MyColors.white,
                        boxShadow: [
                          BoxShadow(
                              offset: Offset(0,7),
                              blurRadius: 37,
                              spreadRadius: 0,
                              color: MyColors.black.withOpacity(.1)
                          )
                        ]
                    ),
                    child: Row(
                      children: [
                        Text('Pickup time', style: kSize12DarkW500Text.copyWith(color: MyColors.black.withOpacity(.4)),),
                        Spacer(),
                        Icon(Icons.calendar_month, color: MyColors.black.withOpacity(.4), size: 20.h,)
                      ],
                    ),
                  ),
                ),
                6.sbw,
                Expanded(
                  child: Container(
                    height: 37.h,
                    padding: EdgeInsets.symmetric(horizontal: 12.w),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(34.r),
                        color: MyColors.white,
                        boxShadow: [
                          BoxShadow(
                              offset: Offset(0,7),
                              blurRadius: 37,
                              spreadRadius: 0,
                              color: MyColors.black.withOpacity(.1)
                          )
                        ]
                    ),
                    child: Row(
                      children: [
                        Text('Delivery time', style: kSize12DarkW500Text.copyWith(color: MyColors.black.withOpacity(.4)),),
                        Spacer(),
                        Icon(Icons.calendar_month, color: MyColors.black.withOpacity(.4), size: 20.h,)
                      ],
                    ),
                  ),
                )
              ],
            ),
            40.sbh,
            Row(
              children: [
                Text('Subtotal', style: kSize12DarkW500Text.copyWith(fontWeight: FontWeight.w600),),
                Spacer(),
                Text('250,000.00', style: kSize12DarkW500Text.copyWith(fontWeight: FontWeight.w600),),
              ],
            ),
            4.sbh,
            Row(
              children: [
                Text('Pickup charges', style: kSize12DarkW500Text.copyWith(fontWeight: FontWeight.w400, color: MyColors.black.withOpacity(.6))),
                Spacer(),
                Text('250', style: kSize12DarkW500Text.copyWith(fontWeight: FontWeight.w400, color: MyColors.black.withOpacity(.6)),),
              ],
            ),
            4.sbh,
            Row(
              children: [
                Text('Delivery charges', style: kSize12DarkW500Text.copyWith(fontWeight: FontWeight.w400, color: MyColors.black.withOpacity(.6))),
                Spacer(),
                Text('250', style: kSize12DarkW500Text.copyWith(fontWeight: FontWeight.w400, color: MyColors.black.withOpacity(.6)),),
              ],
            ),
            16.sbh,
            SizedBox(
              child: Divider(),
            ),
            12.sbh,
            Row(
              children: [
                Text('Total', style: kSize12DarkW500Text.copyWith(fontWeight: FontWeight.w600, color: MyColors.primary),),
                Spacer(),
                Text('250,000.00', style: kSize12DarkW500Text.copyWith(fontWeight: FontWeight.w600, color: MyColors.primary),),
              ],
            ),
            40.sbh,
            Center(
              child: CustomButton(
                onPressed: (){
                  Get.to(() => CheckoutTwoScreen());
                },
                text: 'Next',
              ),
            )

          ],
        ),
      ),
    );
  }
}
