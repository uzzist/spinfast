import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:spinfast/utils/extensions/extensions.dart';
import 'package:spinfast/utils/values/styles.dart';
import 'package:spinfast/views/widgets/custom_appbar.dart';

import '../../../utils/values/my_colors.dart';
import '../../widgets/custom_button.dart';

class ManageAddressScreen extends StatelessWidget {
  const ManageAddressScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        title: 'Manage Address',
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 22.w),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              30.sbh,
              Text(
                'Your saved addresses',
                style: kSize12DarkW500Text.copyWith(
                    color: MyColors.dark, fontWeight: FontWeight.w600),
              ),
              8.sbh,
              ListView.separated(
                physics: NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  itemBuilder: (context, index) {
                    return Container(
                      width: double.infinity,
                      decoration:
                          BoxDecoration(color: MyColors.white, boxShadow: [
                        BoxShadow(
                            offset: Offset(0, 7),
                            blurRadius: 24,
                            spreadRadius: 0,
                            color: MyColors.black.withOpacity(.1))
                      ]),
                      padding:
                          EdgeInsets.symmetric(horizontal: 22.w, vertical: 16.h),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'Jhanvi Shah',
                            style: kSize12DarkW500Text.copyWith(
                                fontWeight: FontWeight.w600),
                          ),
                          6.sbh,
                          Text(
                            '(414) 666-6666',
                            style: kSize12DarkW500Text.copyWith(
                                color: MyColors.black.withOpacity(.6),
                                fontSize: 10.sp),
                          ),
                          8.sbh,
                          Text(
                            '794 Loem ipsm San Francisco, 94102',
                            style: kSize12DarkW500Text.copyWith(
                                color: MyColors.black.withOpacity(.6),
                                fontSize: 10.sp),
                          ),
                          10.sbh,
                          Text(
                            '         Home                Default billing address',
                            style: kSize12DarkW500Text.copyWith(
                                color: MyColors.black.withOpacity(.6),
                                fontSize: 8.sp),
                          ),
                          10.sbh,
                          Row(
                            children: [
                              GestureDetector(
                                onTap: () {
                                  showModalBottomSheet(
                                      isScrollControlled: true,
                                      context: context,
                                      builder: (context) {
                                        return Container(
                                            height: 194.h,
                                            width: double.infinity,
                                            color: MyColors.white,
                                            padding: EdgeInsets.symmetric(horizontal: 22.w),
                                            child: Column(
                                              crossAxisAlignment: CrossAxisAlignment.start,
                                              mainAxisAlignment: MainAxisAlignment.center,
                                              children: [
                                                Row(
                                                  crossAxisAlignment: CrossAxisAlignment.start,
                                                  children: [
                                                    Column(
                                                      crossAxisAlignment: CrossAxisAlignment.start,
                                                      children: [
                                                        Text(
                                                          'Delete \"Home\" address?',
                                                          style: kSize14DarkW500Text.copyWith(
                                                              fontWeight: FontWeight.w700),
                                                        ),
                                                        Text(
                                                          'Are you sure you want to delete this address?',
                                                          style: kSize12DarkW500Text.copyWith(
                                                              color: MyColors.black.withOpacity(.2),
                                                              fontWeight: FontWeight.w400),
                                                        ),
                                                      ],
                                                    ),
                                                    Spacer(),
                                                    IconButton(
                                                      padding: EdgeInsets.only(bottom: 40.h),
                                                      onPressed: () {
                                                        Get.back();
                                                      },
                                                      icon: Icon(Icons.close),
                                                    ),
                                                  ],
                                                ),
                                                32.sbh,
                                                Row(
                                                  children: [
                                                    CustomButton(
                                                      text: 'Cancel',
                                                      onPressed: () {
                                                        Get.back();
                                                      },
                                                      width: 133.w,
                                                      height: 48.h,
                                                    ),
                                                    8.sbw,
                                                    CustomButton(
                                                      text: 'Delete',
                                                      onPressed: () {
        
                                                      },
                                                      backgroundColor: MyColors.red,
                                                      height: 48.h,
                                                      width: 184.w,
                                                    ),
                                                  ],
                                                )
                                              ],
                                            ));
                                      });
                                },
                                  child: Text(
                                'Remove',
                                style: kSize12DarkW500Text.copyWith(
                                    fontWeight: FontWeight.w600,
                                    color: MyColors.primary),
                              )),
                              24.sbw,
                              Text(
                                'Edit',
                                style: kSize12DarkW500Text.copyWith(
                                    fontWeight: FontWeight.w600,
                                    color: MyColors.primary),
                              ),
                            ],
                          ),
                        ],
                      ),
                    );
                  },
                  separatorBuilder: (context, index) => 8.sbh,
                  itemCount: 1),
              80.sbh,
              Center(child: CustomButton(text: '+ Add new address', onPressed: (){})),
            ],
          ),
        ),
      ),
    );
  }
}
