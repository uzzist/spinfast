import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:spinfast/utils/extensions/extensions.dart';
import 'package:spinfast/utils/values/my_images.dart';
import 'package:spinfast/utils/values/styles.dart';
import 'package:spinfast/views/profile/payment_method/add_new_payment_method_screen.dart';
import 'package:spinfast/views/widgets/custom_appbar.dart';
import 'package:spinfast/views/widgets/custom_button.dart';

import '../../../utils/values/my_colors.dart';

class PaymentMethodScreen extends StatelessWidget {
  const PaymentMethodScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        title: 'Payment Method',
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 22.w),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
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
                      padding: EdgeInsets.symmetric(
                          horizontal: 22.w, vertical: 16.h),
                      child: Column(
                        children: [
                          Row(
                            children: [
                              Image.asset(
                                MyImages.applepay_icon,
                                height: 8.h,
                                width: 17.w,
                              ),
                              6.sbw,
                              Text(
                                'Apple Pay',
                                style: kSize12DarkW500Text.copyWith(
                                    fontWeight: FontWeight.w600,
                                    color: MyColors.dark),
                              ),
                              Spacer(),
                              Text(
                                'Remove',
                                style: kSize12DarkW500Text.copyWith(
                                    color: MyColors.red),
                              )
                            ],
                          ),
                          8.sbh,
                          Row(
                            children: [
                              Image.asset(
                                MyImages.payment_icon,
                                height: 8.h,
                                width: 17.w,
                              ),
                              6.sbw,
                              Text(
                                '4153 xxxx xxxx 0981',
                                style: kSize12DarkW500Text.copyWith(
                                    fontWeight: FontWeight.w600,
                                    color: MyColors.dark),
                              ),
                              Spacer(),
                              Text(
                                'Remove',
                                style: kSize12DarkW500Text.copyWith(
                                    color: MyColors.red),
                              )
                            ],
                          ),
                          30.sbh,
                        ],
                      ),
                    );
                  },
                  separatorBuilder: (context, index) => 8.sbh,
                  itemCount: 1),
              40.sbh,
              Center(
                child: CustomButton(
                  text: '+ Add new payment method',
                  onPressed: () {
                    Get.to(() => AddNewPaymentMethodScreen());
                  },
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
