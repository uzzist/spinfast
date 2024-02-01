import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:spinfast/utils/extensions/extensions.dart';
import 'package:spinfast/utils/values/my_images.dart';
import 'package:spinfast/utils/values/styles.dart';
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
                          Image.asset(
                            MyImages.qr_scanner,
                            height: 50.h,
                            width: 50.w,
                          ),
                          Image.asset(
                            MyImages.notification,
                            height: 50.h,
                            width: 50.w,
                          ),
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
                          hintText: 'search',
                          hintStyle: kSize12DarkW500Text.copyWith(
                              color: MyColors.black.withOpacity(.2),
                              fontSize: 14.sp)),
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
