import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:spinfast/controllers/auth_controller/auth_controller.dart';
import 'package:spinfast/utils/extensions/extensions.dart';

import '../../../utils/values/my_colors.dart';
import '../../../utils/values/my_images.dart';
import '../../../utils/values/styles.dart';
import '../../widgets/auth/social_login_button.dart';
import '../../widgets/custom_button.dart';
import '../../widgets/custom_textfield.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GetBuilder<AuthController>(
        builder: (controller) => SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 22.w),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                55.sbh,
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
                    'Sign up',
                    style: kSize16DarkW500Text.copyWith(fontWeight: FontWeight.w600),
                  ),
                ),
                8.sbh,
                Text(
                  'Sign up now to unlock exclusive benefits, personalized profiles, and seamless service scheduling.',
                  style: kSize12DarkW500Text.copyWith(
                      fontWeight: FontWeight.w400, fontSize: 10.sp),
                  textAlign: TextAlign.center,
                ),
                30.sbh,
                Row(
                  children: [
                    Expanded(child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('First name', style: kSize12DarkW500Text.copyWith(color: MyColors.midnightBlue),),
                        8.sbh,
                        CustomTextField(inputFormatters: FilteringTextInputFormatter.singleLineFormatter),
                      ],
                    ),
                    ),
                    16.sbw,
                    Expanded(child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Last name', style: kSize12DarkW500Text.copyWith(color: MyColors.midnightBlue),),
                        8.sbh,
                        CustomTextField(inputFormatters: FilteringTextInputFormatter.singleLineFormatter),
                      ],
                    ),
                    ),
                  ],
                ),
                Text('Email', style: kSize12DarkW500Text.copyWith(color: MyColors.midnightBlue),),
                8.sbh,
                CustomTextField(inputFormatters: FilteringTextInputFormatter.singleLineFormatter),
                Text('Password', style: kSize12DarkW500Text.copyWith(color: MyColors.midnightBlue),),
                8.sbh,
                CustomTextField(inputFormatters: FilteringTextInputFormatter.singleLineFormatter, suffixIcon: 1, obscureText: true,),
                Text('Confirm Password', style: kSize12DarkW500Text.copyWith(color: MyColors.midnightBlue),),
                8.sbh,
                CustomTextField(inputFormatters: FilteringTextInputFormatter.singleLineFormatter, suffixIcon: 1, obscureText: true,),
                Row(
                  children: [
                    Checkbox(value: controller.rememberMe, onChanged: (value) {
                      controller.rememberMe = value!;
                      controller.update();
                    }, side: BorderSide(color: MyColors.black),),
                    Text('Remember me', style: kSize12DarkW500Text,)
                  ],
                ),
                Row(
                  children: [
                    Checkbox(value: controller.termsAndConditions, onChanged: (value) {
                      controller.termsAndConditions = value!;
                      controller.update();
                    }, side: BorderSide(color: MyColors.black),),
                    RichText(text: TextSpan(
                      text: 'I agree to all the ',
                      style: kSize12DarkW500Text,
                      children: [
                        TextSpan(
                          text: 'Terms',
                          style: kSize12DarkW500Text.copyWith(color: MyColors.primary)
                        ),
                        TextSpan(
                            text: ' and ',
                            style: kSize12DarkW500Text
                        ),
                        TextSpan(
                            text: 'privacy policy',
                            style: kSize12DarkW500Text.copyWith(color: MyColors.primary)
                        ),
                      ]
                    ))
                  ],
                ),
                40.sbh,
                Center(child: CustomButton(text: 'Signup', onPressed: () {})),
                28.sbh,
                Center(child: Text('Or sign up with social account', style: kSize12DarkW500Text,)),
                28.sbh,
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SocialLoginButton(onTap: () {}, image: MyImages.google),
                    12.sbw,
                    SocialLoginButton(onTap: () {}, image: MyImages.facebook),
                  ],
                ),
                28.sbh,
                Center(
                  child: RichText(text: TextSpan(
                      text: 'Don\'t have an account? ',
                      style: kSize12DarkW500Text.copyWith(color: MyColors.midnightBlue),
                      children: [
                        TextSpan(
                          text: 'Sign up',
                          style: kSize12DarkW500Text.copyWith(color: MyColors.primary),
                          recognizer: TapGestureRecognizer()..onTap = () => print('Tap Here onTap'),
                        )
                      ]
                  )),
                ),
                40.sbh,
              ],
            ),
          ),
        ),
      ),
    );
  }
}
