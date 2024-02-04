import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:spinfast/utils/extensions/extensions.dart';
import 'package:spinfast/utils/values/my_images.dart';
import 'package:spinfast/utils/values/styles.dart';
import 'package:spinfast/views/widgets/custom_appbar.dart';
import 'package:spinfast/views/widgets/custom_button.dart';

import '../../../utils/values/my_colors.dart';
import '../../widgets/custom_textfield.dart';

class AddNewPaymentMethodScreen extends StatelessWidget {
  const AddNewPaymentMethodScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        title: 'New card',
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 22.w),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              30.sbh,
              Container(
                height: 133.h,
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.r),
                  color: MyColors.primary.withOpacity(.3)
                ),
                padding: EdgeInsets.symmetric(horizontal: 22.w),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Row(
                      children: [
                        Text('Credit Card', style: kSize14DarkW500Text.copyWith(fontWeight: FontWeight.w600, color: MyColors.white),),
                        Spacer(),
                        Text('***1376', style: kSize16DarkW500Text.copyWith(fontWeight: FontWeight.w700, color: MyColors.white),)
                      ],
                    ),
                    16.sbh,
                    Row(
                      children: [
                        Text('Cristina Silva', style: kSize20DarkW500Text.copyWith(fontWeight: FontWeight.w700, color: MyColors.white),),
                        Spacer(),
                        Image.asset(MyImages.mastercard_icon, height: 18.h, width: 30.w,),
                        4.sbw,
                        Text('8/25', style: kSize16DarkW500Text.copyWith(fontWeight: FontWeight.w600, color: MyColors.white),)
                      ],
                    ),
                  ],
                ),

              ),
              30.sbh,
              Text('Card type', style: kSize12DarkW500Text,),
              8.sbh,
              CustomTextField(
                  length: 30,
                  keyboardType: TextInputType.emailAddress,
                  inputFormatters: FilteringTextInputFormatter.singleLineFormatter
              ),
              12.sbh,
              Text('Name on card', style: kSize12DarkW500Text,),
              8.sbh,
              CustomTextField(
                  length: 30,
                  keyboardType: TextInputType.emailAddress,
                  inputFormatters: FilteringTextInputFormatter.singleLineFormatter
              ),
              12.sbh,
              Text('Card Number', style: kSize12DarkW500Text,),
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
                        Text('Exp.Date', style: kSize12DarkW500Text,),
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
                        Text('CVV', style: kSize12DarkW500Text,),
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
              Center(
                child: CustomButton(
                  text: 'Save',
                  onPressed: (){},
                ),
              )

            ],
          ),
        ),
      ),
    );
  }
}
