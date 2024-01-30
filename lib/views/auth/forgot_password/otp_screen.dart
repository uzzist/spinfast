import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:spinfast/utils/extensions/extensions.dart';
import 'package:spinfast/utils/values/styles.dart';
import 'package:spinfast/views/auth/forgot_password/change_password_screen.dart';
import 'package:spinfast/views/widgets/auth/otp_widget.dart';
import 'package:spinfast/views/widgets/custom_button.dart';

import '../../../utils/values/my_colors.dart';

class OtpScreen extends StatelessWidget {
  const OtpScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text('Enter the code', style: kSize16DarkW500Text.copyWith(fontWeight: FontWeight.w600),),
          8.sbh,
          Text('We have just sent a 4 digit code to', style: kSize12DarkW500Text.copyWith(color: MyColors.black.withOpacity(.4)),),
          Text('example@gmail.com', style: kSize12DarkW500Text,),
          40.sbh,
          CustomPinEntryField(
            showCursor: true,
            keyboard: TextInputType.number,
            onSubmit: (otp) {

            },
            textStyle: TextStyle(
                fontSize: 24.sp,
                fontWeight: FontWeight.w500,
                color: MyColors.black,
                height: 1.0
            ),
            fields: 4,
            fieldHeight: 52.h,
            fieldWidth: 52.w,
          ),
          40.sbh,
          CustomButton(text: 'Next', onPressed: () {
            Get.to(() => ChangePasswordScreen());
          }),
          16.sbh,
          Text('Didn\'t receive?', style: kSize12DarkW500Text,),
          16.sbh,
          Text('Resend code', style: kSize12DarkW500Text.copyWith(color: MyColors.primary),)
        ],
      ),
    );
  }
}
