import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:spinfast/utils/extensions/extensions.dart';
import 'package:spinfast/utils/values/my_colors.dart';
import 'package:spinfast/utils/values/my_images.dart';
import 'package:spinfast/utils/values/styles.dart';
import 'package:spinfast/views/auth/signup/signup_screen.dart';
import 'package:spinfast/views/widgets/auth/social_login_button.dart';
import 'package:spinfast/views/widgets/custom_button.dart';
import 'package:spinfast/views/widgets/custom_textfield.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 22.w),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
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
                'Sign in',
                style: kSize16DarkW500Text.copyWith(fontWeight: FontWeight.w600),
              ),
            ),
            8.sbh,
            Text(
              'Sign in to your account for a seamless laundry experience. Your clean clothes are just a click away!',
              style: kSize12DarkW500Text.copyWith(
                  fontWeight: FontWeight.w400, fontSize: 10.sp),
              textAlign: TextAlign.center,
            ),
            30.sbh,
            Text('Email', style: kSize12DarkW500Text.copyWith(color: MyColors.midnightBlue),),
            8.sbh,
            CustomTextField(inputFormatters: FilteringTextInputFormatter.singleLineFormatter),
            Text('Password', style: kSize12DarkW500Text.copyWith(color: MyColors.midnightBlue),),
            8.sbh,
            CustomTextField(inputFormatters: FilteringTextInputFormatter.singleLineFormatter, suffixIcon: 1, obscureText: true,),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text('Forgot Password?', style: kSize12DarkW500Text.copyWith(color: MyColors.primary),)
              ],
            ),
            40.sbh,
            Center(child: CustomButton(text: 'Login', onPressed: () {})),
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
                    recognizer: TapGestureRecognizer()..onTap = () => Get.to(() => SignUpScreen()),
                  )
                ]
              )),
            )
          ],
        ),
      ),
    );
  }
}
