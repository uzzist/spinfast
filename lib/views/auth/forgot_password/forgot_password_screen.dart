import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:spinfast/utils/extensions/extensions.dart';
import 'package:spinfast/views/auth/forgot_password/otp_screen.dart';

import '../../../utils/values/my_colors.dart';
import '../../../utils/values/my_images.dart';
import '../../../utils/values/styles.dart';
import '../../widgets/custom_button.dart';
import '../../widgets/custom_textfield.dart';

class ForgotPasswordScreen extends StatelessWidget {
  const ForgotPasswordScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 22.w),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              70.sbh,
              Center(
                child: Image.asset(
                  MyImages.logo,
                  height: 131.h,
                  width: 102.w,
                ),
              ),
              40.sbh,
              Center(
                child: Text(
                  'Reset your password',
                  style:
                      kSize16DarkW500Text.copyWith(fontWeight: FontWeight.w600),
                ),
              ),
              8.sbh,
              Text(
                'Enter your email and we\'ll send you a link to reset your password.',
                style: kSize12DarkW500Text.copyWith(
                    fontWeight: FontWeight.w400, fontSize: 10.sp),
                textAlign: TextAlign.center,
              ),
              30.sbh,
              Text(
                'Email',
                style:
                    kSize12DarkW500Text.copyWith(color: MyColors.midnightBlue),
              ),
              8.sbh,
              CustomTextField(
                inputFormatters:
                    FilteringTextInputFormatter.singleLineFormatter,
                length: 20,
                keyboardType: TextInputType.emailAddress,
              ),
              54.sbh,
              Center(
                  child: CustomButton(
                      text: 'Next',
                      onPressed: () {
                        Get.to(() => OtpScreen());
                      })),
              18.sbh,
              Center(
                child: RichText(
                    text: TextSpan(
                        text: 'Back to ',
                        style: kSize12DarkW500Text.copyWith(
                            color: MyColors.midnightBlue),
                        children: [
                      TextSpan(
                        text: 'Sign in',
                        style: kSize12DarkW500Text.copyWith(
                            color: MyColors.primary),
                        recognizer: TapGestureRecognizer()
                          ..onTap = () => Get.back(),
                      )
                    ])),
              )
            ],
          ),
        ),
      ),
    );
  }
}
