import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:spinfast/utils/extensions/extensions.dart';
import 'package:spinfast/utils/values/my_images.dart';
import 'package:spinfast/utils/values/styles.dart';
import 'package:spinfast/views/home/laundromat_detail_screen.dart';
import 'package:spinfast/views/home/location_screen.dart';
import 'package:spinfast/views/home/notification_screen.dart';
import 'package:spinfast/views/widgets/home/search_screen.dart';
import 'package:spinfast/views/widgets/home/services_widget.dart';
import 'package:spinfast/views/widgets/laundromat_widget.dart';

import '../../utils/values/my_colors.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyColors.primary.withOpacity(.2),
      body: DefaultTabController(
        length: 3,
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.symmetric(horizontal: 22.w),
              width: double.infinity,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  50.sbh,
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Image.asset(
                        MyImages.profile_picture,
                        height: 36.h,
                        width: 36.w,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Icon(
                                Icons.location_on,
                                color: MyColors.dark,
                                size: 15.h,
                              ),
                              Text(
                                'Munich Center',
                                style: kSize12DarkW500Text.copyWith(
                                    fontWeight: FontWeight.w600,
                                    color: MyColors.dark),
                              ),
                              Icon(
                                Icons.arrow_drop_down_outlined,
                                color: MyColors.dark,
                              )
                            ],
                          ),
                          Text(
                            ' Hello Criss Germano, 👋',
                            style: kSize12DarkW500Text.copyWith(
                                fontWeight: FontWeight.w400),
                          )
                        ],
                      ),
                      Spacer(),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          GestureDetector(
                            onTap: () {
                              Get.to(() => LocationScreen());
                            },
                            child: Image.asset(
                              MyImages.qr_scanner,
                              height: 50.h,
                              width: 50.w,
                            ),
                          ),
                          GestureDetector(
                            onTap: () {
                              Get.to(() => NotificationScreen());
                            },
                            child: Image.asset(
                              MyImages.notification,
                              height: 50.h,
                              width: 50.w,
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                  20.sbh,
                  Row(
                    children: [
                      GestureDetector(
                        onTap: () {
                          Get.to(() => SearchScreen());
                        },
                        child: Container(
                          height: 39.h,
                          width: 280.w,
                          decoration: BoxDecoration(
                              color: MyColors.white,
                              boxShadow: [
                                BoxShadow(
                                    offset: Offset(0, 4),
                                    color: MyColors.black.withOpacity(.1),
                                    blurRadius: 12,
                                    spreadRadius: 0),
                              ],
                              borderRadius: BorderRadius.circular(8.r)),
                          child: Row(
                            children: [
                              16.sbw,
                              Icon(
                                Icons.search,
                                color: MyColors.black.withOpacity(.2),
                              ),
                              8.sbw,
                              Text(
                                'Shop name or service',
                                style: kSize12DarkW500Text.copyWith(
                                    fontSize: 12.sp,
                                    color: MyColors.black.withOpacity(.2)),
                              )
                            ],
                          ),
                        ),
                      ),
                      8.sbw,
                      GestureDetector(
                        onTap: () {
                          showModalBottomSheet(
                              isScrollControlled: true,
                              context: context,
                              builder: (context) {
                                return Container(
                                  height: 547.h,
                                  width: double.infinity,
                                  color: MyColors.white,
                                  child: Column(
                                    children: [
                                      24.sbh,
                                      Padding(
                                        padding: EdgeInsets.symmetric(
                                            horizontal: 16.w),
                                        child: Row(
                                          children: [
                                            Icon(
                                              Icons.close,
                                              color: MyColors.black,
                                              size: 14.h,
                                            ),
                                            4.sbw,
                                            Text(
                                              'Sort/Filters',
                                              style:
                                                  kSize14DarkW500Text.copyWith(
                                                      fontWeight:
                                                          FontWeight.w600),
                                            ),
                                            Spacer(),
                                            Text(
                                              'Clear all',
                                              style:
                                                  kSize12DarkW500Text.copyWith(
                                                      color: MyColors.primary),
                                            )
                                          ],
                                        ),
                                      ),
                                      12.sbh,
                                      Expanded(
                                        child: Container(
                                          decoration: BoxDecoration(
                                              border: Border(
                                                  top: BorderSide(
                                                      color: MyColors.black
                                                          .withOpacity(.2)))),
                                          child: Row(
                                            children: [
                                              Column(
                                                children: [
                                                  Expanded(
                                                    child: Container(
                                                      width: 117.w,
                                                      color:
                                                          MyColors.lightBlack,
                                                      child: Column(
                                                        children: [
                                                          Container(
                                                            height: 56.h,
                                                            width:
                                                                double.infinity,
                                                            color:
                                                                MyColors.white,
                                                            child: Center(
                                                              child: Text(
                                                                'Sort',
                                                                style: kSize12DarkW500Text.copyWith(
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .w600),
                                                              ),
                                                            ),
                                                          ),
                                                          Container(
                                                            height: 56.h,
                                                            width:
                                                                double.infinity,
                                                            color: MyColors
                                                                .lightBlack,
                                                            child: Center(
                                                              child: Text(
                                                                'Others',
                                                                style: kSize12DarkW500Text.copyWith(
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .w600,
                                                                    color: MyColors
                                                                        .black
                                                                        .withOpacity(
                                                                            .2)),
                                                              ),
                                                            ),
                                                          ),
                                                          Container(
                                                            height: 56.h,
                                                            width:
                                                                double.infinity,
                                                            color: MyColors
                                                                .lightBlack,
                                                            child: Center(
                                                              child: Text(
                                                                'location',
                                                                style: kSize12DarkW500Text.copyWith(
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .w600,
                                                                    color: MyColors
                                                                        .black
                                                                        .withOpacity(
                                                                            .2)),
                                                              ),
                                                            ),
                                                          ),
                                                          Container(
                                                            height: 56.h,
                                                            width:
                                                                double.infinity,
                                                            color: MyColors
                                                                .lightBlack,
                                                            child: Center(
                                                              child: Text(
                                                                'Timing',
                                                                style: kSize12DarkW500Text.copyWith(
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .w600,
                                                                    color: MyColors
                                                                        .black
                                                                        .withOpacity(
                                                                            .2)),
                                                              ),
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                              Expanded(
                                                  child: Container(
                                                color: MyColors.white,
                                                padding: EdgeInsets.only(
                                                    top: 20.h, left: 16.w),
                                                child: Column(
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  children: [
                                                    Row(
                                                      children: [
                                                        Image.asset(
                                                          MyImages.check_icon,
                                                          height: 16.h,
                                                          width: 16.w,
                                                        ),
                                                        4.sbw,
                                                        Text(
                                                          'Popularity',
                                                          style:
                                                              kSize12DarkW500Text,
                                                        )
                                                      ],
                                                    ),
                                                    30.sbh,
                                                    Row(
                                                      children: [
                                                        Image.asset(
                                                          MyImages.check_icon,
                                                          height: 16.h,
                                                          width: 16.w,
                                                          color:
                                                              MyColors.primary,
                                                        ),
                                                        4.sbw,
                                                        Text(
                                                            'Rating: High to Low',
                                                            style: kSize12DarkW500Text
                                                                .copyWith(
                                                                    color: MyColors
                                                                        .primary))
                                                      ],
                                                    ),
                                                    30.sbh,
                                                    Row(
                                                      children: [
                                                        Image.asset(
                                                          MyImages.check_icon,
                                                          height: 16.h,
                                                          width: 16.w,
                                                        ),
                                                        4.sbw,
                                                        Text(
                                                          'Cost: High to Low',
                                                          style:
                                                              kSize12DarkW500Text,
                                                        )
                                                      ],
                                                    ),
                                                    30.sbh,
                                                    Row(
                                                      children: [
                                                        Image.asset(
                                                          MyImages.check_icon,
                                                          height: 16.h,
                                                          width: 16.w,
                                                        ),
                                                        4.sbw,
                                                        Text(
                                                          'Cost: Low to High',
                                                          style:
                                                              kSize12DarkW500Text,
                                                        )
                                                      ],
                                                    ),
                                                  ],
                                                ),
                                              ))
                                            ],
                                          ),
                                        ),
                                      )
                                    ],
                                  ),
                                );
                              });
                        },
                        child: Container(
                          height: 40.h,
                          width: 40.w,
                          decoration: BoxDecoration(
                              color: MyColors.white,
                              boxShadow: [
                                BoxShadow(
                                    offset: Offset(0, 4),
                                    color: MyColors.black.withOpacity(.1),
                                    blurRadius: 12,
                                    spreadRadius: 0),
                              ],
                              borderRadius: BorderRadius.circular(8.r)),
                          padding: EdgeInsets.all(8),
                          child: Center(
                            child: Image.asset(
                              MyImages.filter,
                              color: MyColors.black.withOpacity(.2),
                            ),
                          ),
                        ),
                      )
                    ],
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
                  borderRadius: BorderRadius.only(
                      topRight: Radius.circular(24.r),
                      topLeft: Radius.circular(24.r))),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  20.sbh,
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 24.w),
                    child: Text(
                      'Services',
                      style: kSize14DarkW500Text.copyWith(
                          fontWeight: FontWeight.w600),
                    ),
                  ),
                  12.sbh,
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 24.w),
                    child: SizedBox(
                      height: 90.h,
                      child: ListView.separated(
                          shrinkWrap: true,
                          scrollDirection: Axis.horizontal,
                          itemBuilder: (context, index) {
                            return ServicesWidget();
                          },
                          separatorBuilder: (context, index) => 12.sbw,
                          itemCount: 5),
                    ),
                  ),
                  20.sbh,
                  Expanded(
                      child: Column(
                    children: [
                      TabBar(
                        indicatorColor: MyColors.primary,
                        labelPadding: EdgeInsets.zero,
                        unselectedLabelColor: MyColors.black.withOpacity(.4),
                        labelColor: MyColors.dark,
                        labelStyle:
                            kSize12DarkW500Text.copyWith(fontSize: 10.sp),
                        tabs: [
                          Tab(
                            child: Text(
                              'Most Popular',
                            ),
                          ),
                          Tab(
                            child: Text(
                              'Recommendations',
                            ),
                          ),
                          Tab(
                            child: Text('Recent'),
                          ),
                        ],
                      ),
                      Expanded(
                          child: Padding(
                        padding: EdgeInsets.symmetric(horizontal: 24.w),
                        child: TabBarView(
                          children: [
                            GridView.builder(
                              shrinkWrap: true,
                              gridDelegate:
                                  SliverGridDelegateWithFixedCrossAxisCount(
                                      crossAxisCount: 2,
                                      // 2 items in a row
                                      crossAxisSpacing: 6.0,
                                      // spacing between items
                                      mainAxisSpacing: 6.0,
                                      childAspectRatio: 0.8),
                              itemBuilder: (BuildContext context, int index) {
                                return GestureDetector(
                                  onTap: () {
                                    Get.to(() => LaundromatDetailScreen());
                                  },
                                  child: LaundromatWidget(),
                                );
                              },
                              itemCount:
                                  4, // You can change this to the actual number of items you have
                            ),
                            GridView.builder(
                              shrinkWrap: true,
                              gridDelegate:
                                  SliverGridDelegateWithFixedCrossAxisCount(
                                      crossAxisCount: 2,
                                      // 2 items in a row
                                      crossAxisSpacing: 6.0,
                                      // spacing between items
                                      mainAxisSpacing: 6.0,
                                      childAspectRatio: 0.8),
                              itemBuilder: (BuildContext context, int index) {
                                return LaundromatWidget();
                              },
                              itemCount:
                                  4, // You can change this to the actual number of items you have
                            ),
                            GridView.builder(
                              shrinkWrap: true,
                              gridDelegate:
                                  SliverGridDelegateWithFixedCrossAxisCount(
                                      crossAxisCount: 2,
                                      // 2 items in a row
                                      crossAxisSpacing: 6.0,
                                      // spacing between items
                                      mainAxisSpacing: 6.0,
                                      childAspectRatio: 0.8),
                              itemBuilder: (BuildContext context, int index) {
                                return LaundromatWidget();
                              },
                              itemCount:
                                  4, // You can change this to the actual number of items you have
                            )
                          ],
                        ),
                      ))
                    ],
                  ))
                ],
              ),
            ))
          ],
        ),
      ),
    );
  }
}
