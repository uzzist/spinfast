import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:spinfast/utils/extensions/extensions.dart';
import 'package:spinfast/views/cart/checkout_three.dart';

import '../../utils/values/my_colors.dart';
import '../../utils/values/styles.dart';
import '../widgets/custom_appbar.dart';
import '../widgets/custom_button.dart';
import '../widgets/custom_textfield.dart';

class CheckoutTwoScreen extends StatelessWidget {
  const CheckoutTwoScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        title: 'Checkout',
      ),
      body: SingleChildScrollView(
        child: Padding(
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
                        color: MyColors.silver
                    ),
                    child: Center(
                      child: Text('3', style: kSize12DarkW500Text.copyWith(fontWeight: FontWeight.w700, color: MyColors.black.withOpacity(.4)),),
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  Text('Schedule Service', style: kSize12DarkW500Text.copyWith(color: MyColors.primary, fontSize: 10.sp),),
                  35.sbw,
                  Text('Billing details', style: kSize12DarkW500Text.copyWith(color: MyColors.primary, fontSize: 10.sp),),
                ],
              ),
              40.sbh,
              Row(
                children: [
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('First Name*', style: kSize12DarkW500Text,),
                        8.sbh,
                        CustomTextField(
                            length: 12,
                            keyboardType: TextInputType.text,
                            inputFormatters: FilteringTextInputFormatter.singleLineFormatter
                        ),
                      ],
                    ),
                  ),
                  6.sbw,
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Last Name*', style: kSize12DarkW500Text,),
                        8.sbh,
                        CustomTextField(
                            length: 12,
                            keyboardType: TextInputType.text,
                            inputFormatters: FilteringTextInputFormatter.singleLineFormatter
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              12.sbh,
              Text('Country/Region*', style: kSize12DarkW500Text,),
              8.sbh,
              CustomTextField(
                  length: 30,
                  keyboardType: TextInputType.emailAddress,
                  inputFormatters: FilteringTextInputFormatter.singleLineFormatter
              ),
              12.sbh,
              Text('Apt,suit,unit', style: kSize12DarkW500Text,),
              8.sbh,
              CustomTextField(
                  length: 30,
                  keyboardType: TextInputType.emailAddress,
                  inputFormatters: FilteringTextInputFormatter.singleLineFormatter
              ),
              12.sbh,
              Text('Phone Number', style: kSize12DarkW500Text,),
              8.sbh,
              CustomTextField(
                  length: 30,
                  keyboardType: TextInputType.number,
                  inputFormatters: FilteringTextInputFormatter.digitsOnly
              ),
              12.sbh,
              Text('Postal code*', style: kSize12DarkW500Text,),
              8.sbh,
              CustomTextField(
                  length: 30,
                  keyboardType: TextInputType.emailAddress,
                  inputFormatters: FilteringTextInputFormatter.singleLineFormatter
              ),
              12.sbh,
              Row(
                children: [
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('City*', style: kSize12DarkW500Text,),
                        8.sbh,
                        CustomTextField(
                            length: 12,
                            keyboardType: TextInputType.text,
                            inputFormatters: FilteringTextInputFormatter.singleLineFormatter
                        ),
                      ],
                    ),
                  ),
                  6.sbw,
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Country*', style: kSize12DarkW500Text,),
                        8.sbh,
                        CustomTextField(
                            length: 12,
                            keyboardType: TextInputType.text,
                            inputFormatters: FilteringTextInputFormatter.singleLineFormatter
                        ),
                      ],
                    ),
                  ),
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
                    Get.to(() => CheckoutThreeScreen());
                  },
                  text: 'Next',
                ),
              )
        
            ],
          ),
        ),
      ),
    );
  }
}
