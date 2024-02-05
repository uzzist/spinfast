import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:spinfast/utils/extensions/extensions.dart';
import 'package:spinfast/utils/values/my_images.dart';
import 'package:spinfast/utils/values/styles.dart';

import '../../utils/values/my_colors.dart';

class LaundromatDetailScreen extends StatelessWidget {
  const LaundromatDetailScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: DefaultTabController(
          length: 3,
          child: Column(
            children: [
              Image.asset(
                MyImages.laundromat,
                height: 250.h,
                width: double.infinity,
                fit: BoxFit.cover,
              ),
              20.sbh,
              Expanded(
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 16.w),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Lorem Ipsm Laundry Newcomb',
                        style: kSize14DarkW500Text,
                      ),
                      4.sbh,
                      Row(
                        children: [
                          RatingBar.builder(
                              itemSize: 10.h,
                              itemCount: 5,
                              direction: Axis.horizontal,
                              minRating: 1,
                              initialRating: 4,
                              itemBuilder: (context, _) => Icon(
                                    Icons.star,
                                    color: Colors.amber,
                                  ),
                              onRatingUpdate: (value) {}),
                          Text(
                            '(150 reviews)',
                            style: kSize12DarkW500Text.copyWith(
                                color: MyColors.black.withOpacity(.4),
                                fontSize: 8.sp),
                          )
                        ],
                      ),
                      8.sbh,
                      Row(
                        children: [
                          Icon(
                            Icons.location_on,
                            color: MyColors.black.withOpacity(.6),
                            size: 16.h,
                          ),
                          Text(
                            'Shop 8, 167 Shaws RoadWerribee 3030',
                            style: kSize12DarkW500Text.copyWith(
                                color: MyColors.black.withOpacity(.6),
                                fontSize: 10.sp),
                          )
                        ],
                      ),
                      Row(
                        children: [
                          Icon(
                            Icons.access_time_filled,
                            color: MyColors.black.withOpacity(.6),
                            size: 16.h,
                          ),
                          Text(
                            '6:00am - 9:00pm',
                            style: kSize12DarkW500Text.copyWith(
                                color: MyColors.black.withOpacity(.6),
                                fontSize: 10.sp),
                          )
                        ],
                      ),
                      Row(
                        children: [
                          Icon(
                            Icons.phone_in_talk_outlined,
                            color: MyColors.black.withOpacity(.6),
                            size: 16.h,
                          ),
                          Text(
                            '(414) 222 33333',
                            style: kSize12DarkW500Text.copyWith(
                                color: MyColors.black.withOpacity(.6),
                                fontSize: 10.sp),
                          )
                        ],
                      ),
                      Expanded(
                        child: Column(
                          children: [
                            TabBar(
                                indicatorColor: MyColors.primary,
                                labelPadding: EdgeInsets.zero,
                                unselectedLabelColor:
                                    MyColors.black.withOpacity(.4),
                                labelColor: MyColors.dark,
                                labelStyle: kSize12DarkW500Text.copyWith(
                                    fontSize: 10.sp),
                                tabs: [
                                  Tab(
                                    child: Text(
                                      'Wash',
                                    ),
                                  ),
                                  Tab(
                                    child: Text(
                                      'Dry clean',
                                    ),
                                  ),
                                  Tab(
                                    child: Text('Ironing'),
                                  ),
                                ]),
                            Expanded(
                              child: Padding(
                                padding: EdgeInsets.symmetric(horizontal: 24.w),
                                child: TabBarView(
                                  children: [
                                    SizedBox.shrink(),
                                    SizedBox.shrink(),
                                    SizedBox.shrink(),
                                  ],
                                ),
                              ),
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              )
            ],
          )),
    );
  }
}
