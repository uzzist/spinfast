import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:spinfast/utils/extensions/extensions.dart';
import 'package:spinfast/utils/values/my_images.dart';
import 'package:spinfast/views/widgets/custom_appbar.dart';
import 'package:spinfast/views/widgets/custom_button.dart';

import '../../utils/values/my_colors.dart';
import '../../utils/values/styles.dart';

class MyOrdersScreen extends StatelessWidget {
  const MyOrdersScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        title: 'My Orders',
      ),
      body: DefaultTabController(
        length: 3,
        child: Column(
          children: [
            TabBar(
                indicatorColor: MyColors.primary,
                labelPadding: EdgeInsets.zero,
                unselectedLabelColor: MyColors.black.withOpacity(.4),
                labelColor: MyColors.dark,
                labelStyle:
                kSize12DarkW500Text.copyWith(fontSize: 12.sp, fontWeight: FontWeight.w600),
                tabs: [
                  Tab(
                    child: Text(
                      'Scheduled',
                    ),
                  ),
                  Tab(
                    child: Text(
                      'Cancelled',
                    ),
                  ),
                  Tab(
                    child: Text('Completed'),
                  ),
                ]
            ),
            8.sbh,
            Expanded(
                child: TabBarView(
                  children: [
                    ListView.separated(
                      shrinkWrap: true,
                    itemBuilder: (context, index) {
                      return Container(
                        width: double.infinity,
                        decoration: BoxDecoration(
                          color: MyColors.white,
                          boxShadow: [
                            BoxShadow(
                              offset: Offset(0,4),
                              blurRadius: 12,
                              spreadRadius: 0,
                              color: MyColors.black.withOpacity(.1)
                            )
                          ]
                        ),
                        child: Column(
                          children: [
                            Container(
                              width: double.infinity,
                              color: MyColors.silver,
                              padding: EdgeInsets.symmetric(horizontal: 28.w, vertical: 16.h),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text('Order No: #123456789', style: kSize12DarkW500Text.copyWith(fontWeight: FontWeight.w600),),
                                  RichText(text: TextSpan(
                                    text: 'Pickup date: ',
                                    style: kSize12DarkW500Text.copyWith(fontSize: 10.sp, color: MyColors.black.withOpacity(.6)),
                                    children: [
                                      TextSpan(
                                        text: '2 June 2024 2:40 PM',
                                        style: kSize12DarkW500Text.copyWith(fontSize: 10.sp, color: MyColors.black.withOpacity(.4), fontWeight: FontWeight.w400)
                                      )
                                    ]
                                  )),
                                  RichText(text: TextSpan(
                                      text: 'Estimated delivery date: ',
                                      style: kSize12DarkW500Text.copyWith(fontSize: 10.sp, color: MyColors.black.withOpacity(.6)),
                                      children: [
                                        TextSpan(
                                            text: '2 June 2024',
                                            style: kSize12DarkW500Text.copyWith(fontSize: 10.sp, color: MyColors.black.withOpacity(.4), fontWeight: FontWeight.w400)
                                        )
                                      ]
                                  ))
                                ],
                              ),
                            ),
                            8.sbh,
                            Padding(
                              padding: EdgeInsets.symmetric(horizontal: 28.w),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    children: [
                                      Image.asset(MyImages.wash_icon, height: 16.h, width: 16.w,),
                                      Text('Wash Fold', style: kSize12DarkW500Text.copyWith(color: MyColors.primary),),
                                    ],
                                  ),
                                  Text('T-shirt x 1', style: kSize12DarkW500Text.copyWith(fontWeight: FontWeight.w400, fontSize: 10.sp),),
                                  Text('Jacket / blazer x 1', style: kSize12DarkW500Text.copyWith(fontWeight: FontWeight.w400, fontSize: 10.sp),),
                                  Text('Total: \$23.00', style: kSize12DarkW500Text.copyWith(fontWeight: FontWeight.w600),),
                                ],
                              ),
                            ),
                            14.sbh,
                            SizedBox(
                              width: 327.w,
                              child: Divider(
                                color: MyColors.black.withOpacity(.4),
                              ),
                            ),
                            16.sbh,
                            Padding(
                              padding: EdgeInsets.symmetric(horizontal: 28.w),
                              child: Row(
                                children: [
                                  Text('Cancel Booking', style: kSize12DarkW500Text.copyWith(color: MyColors.red, fontWeight: FontWeight.w600),),
                                  Spacer(),
                                  GestureDetector(
                                    onTap: (){},
                                    child: Container(
                                      height: 26.h,
                                      width: 86.w,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(34.r),
                                        color: MyColors.white,
                                        border: Border.all(color: MyColors.primary)
                                      ),
                                      child: Center(
                                        child: Text('View details', style: kSize12DarkW500Text.copyWith(fontSize: 10.sp, color: MyColors.primary),),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            16.sbh
                          ],
                        ),
                      );
                    },
                    separatorBuilder: (context, index) => 8.sbh,
                    itemCount: 1),
                    ListView.separated(
                      shrinkWrap: true,
                        itemBuilder: (context, index) {
                          return Container(
                            width: double.infinity,
                            decoration: BoxDecoration(
                                color: MyColors.white,
                                boxShadow: [
                                  BoxShadow(
                                      offset: Offset(0,4),
                                      blurRadius: 12,
                                      spreadRadius: 0,
                                      color: MyColors.black.withOpacity(.1)
                                  )
                                ]
                            ),
                            child: Column(
                              children: [
                                Container(
                                  width: double.infinity,
                                  color: MyColors.silver,
                                  padding: EdgeInsets.symmetric(horizontal: 28.w, vertical: 16.h),
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text('Order No: #123456789', style: kSize12DarkW500Text.copyWith(fontWeight: FontWeight.w600),),
                                    ],
                                  ),
                                ),
                                8.sbh,
                                Padding(
                                  padding: EdgeInsets.symmetric(horizontal: 28.w),
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Row(
                                        children: [
                                          Image.asset(MyImages.wash_icon, height: 16.h, width: 16.w,),
                                          Text('Wash Fold', style: kSize12DarkW500Text.copyWith(color: MyColors.primary),),
                                        ],
                                      ),
                                      Text('T-shirt x 1', style: kSize12DarkW500Text.copyWith(fontWeight: FontWeight.w400, fontSize: 10.sp),),
                                      Text('Jacket / blazer x 1', style: kSize12DarkW500Text.copyWith(fontWeight: FontWeight.w400, fontSize: 10.sp),),
                                      Text('Total: \$23.00', style: kSize12DarkW500Text.copyWith(fontWeight: FontWeight.w600),),
                                    ],
                                  ),
                                ),
                                14.sbh,
                                SizedBox(
                                  width: 327.w,
                                  child: Divider(
                                    color: MyColors.black.withOpacity(.4),
                                  ),
                                ),
                                16.sbh,
                                Padding(
                                  padding: EdgeInsets.symmetric(horizontal: 28.w),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    children: [
                                      GestureDetector(
                                        onTap: (){},
                                        child: Container(
                                          height: 26.h,
                                          width: 86.w,
                                          decoration: BoxDecoration(
                                              borderRadius: BorderRadius.circular(34.r),
                                              color: MyColors.white,
                                              border: Border.all(color: MyColors.primary)
                                          ),
                                          child: Center(
                                            child: Text('Rebook', style: kSize12DarkW500Text.copyWith(fontSize: 10.sp, color: MyColors.primary),),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                16.sbh
                              ],
                            ),
                          );
                        },
                        separatorBuilder: (context, index) => 8.sbh,
                        itemCount: 1),
                    ListView.separated(
                      shrinkWrap: true,
                        itemBuilder: (context, index) {
                          return Container(
                            width: double.infinity,
                            decoration: BoxDecoration(
                                color: MyColors.white,
                                boxShadow: [
                                  BoxShadow(
                                      offset: Offset(0,4),
                                      blurRadius: 12,
                                      spreadRadius: 0,
                                      color: MyColors.black.withOpacity(.1)
                                  )
                                ]
                            ),
                            child: Column(
                              children: [
                                Container(
                                  width: double.infinity,
                                  color: MyColors.silver,
                                  padding: EdgeInsets.symmetric(horizontal: 28.w, vertical: 16.h),
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text('Order No: #123456789', style: kSize12DarkW500Text.copyWith(fontWeight: FontWeight.w600),),
                                      RichText(text: TextSpan(
                                          text: 'Pickup date: ',
                                          style: kSize12DarkW500Text.copyWith(fontSize: 10.sp, color: MyColors.black.withOpacity(.6)),
                                          children: [
                                            TextSpan(
                                                text: '2 June 2024 2:40 PM',
                                                style: kSize12DarkW500Text.copyWith(fontSize: 10.sp, color: MyColors.black.withOpacity(.4), fontWeight: FontWeight.w400)
                                            )
                                          ]
                                      )),
                                      RichText(text: TextSpan(
                                          text: 'Estimated delivery date: ',
                                          style: kSize12DarkW500Text.copyWith(fontSize: 10.sp, color: MyColors.black.withOpacity(.6)),
                                          children: [
                                            TextSpan(
                                                text: '2 June 2024',
                                                style: kSize12DarkW500Text.copyWith(fontSize: 10.sp, color: MyColors.black.withOpacity(.4), fontWeight: FontWeight.w400)
                                            )
                                          ]
                                      ))
                                    ],
                                  ),
                                ),
                                8.sbh,
                                Padding(
                                  padding: EdgeInsets.symmetric(horizontal: 28.w),
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Row(
                                        children: [
                                          Image.asset(MyImages.wash_icon, height: 16.h, width: 16.w,),
                                          Text('Wash Fold', style: kSize12DarkW500Text.copyWith(color: MyColors.primary),),
                                        ],
                                      ),
                                      Text('T-shirt x 1', style: kSize12DarkW500Text.copyWith(fontWeight: FontWeight.w400, fontSize: 10.sp),),
                                      Text('Jacket / blazer x 1', style: kSize12DarkW500Text.copyWith(fontWeight: FontWeight.w400, fontSize: 10.sp),),
                                      Text('Total: \$23.00', style: kSize12DarkW500Text.copyWith(fontWeight: FontWeight.w600),),
                                    ],
                                  ),
                                ),
                                14.sbh,
                                SizedBox(
                                  width: 327.w,
                                  child: Divider(
                                    color: MyColors.black.withOpacity(.4),
                                  ),
                                ),
                                16.sbh,
                                Padding(
                                  padding: EdgeInsets.symmetric(horizontal: 28.w),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    children: [
                                      GestureDetector(
                                        onTap: (){},
                                        child: Container(
                                          height: 26.h,
                                          width: 86.w,
                                          decoration: BoxDecoration(
                                              borderRadius: BorderRadius.circular(34.r),
                                              color: MyColors.white,
                                              border: Border.all(color: MyColors.primary)
                                          ),
                                          child: Center(
                                            child: Text('Rebook', style: kSize12DarkW500Text.copyWith(fontSize: 10.sp, color: MyColors.primary),),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                16.sbh
                              ],
                            ),
                          );
                        },
                        separatorBuilder: (context, index) => 8.sbh,
                        itemCount: 1)
                  ],
                ))
          ],
        ),
      ),
    );
  }
}
