import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:spinfast/utils/extensions/extensions.dart';
import 'package:spinfast/utils/values/my_images.dart';
import 'package:spinfast/utils/values/styles.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
            MyImages.logo,
            height: 131.h,
            width: 102.w,
          ),
          40.sbh,
          Text(
            'Sign in',
            style: kSize16DarkW500Text.copyWith(fontWeight: FontWeight.w600),
          ),
          8.sbh,
          Text(
            'Sign in to your account for a seamless laundry experience. Your clean clothes are just a click away!',
            style: kSize12DarkW500Text.copyWith(
                fontWeight: FontWeight.w400, fontSize: 10.sp),
            textAlign: TextAlign.center,
          ),
          30.sbh,
          Text('data')
        ],
      ),
    );
  }
}
