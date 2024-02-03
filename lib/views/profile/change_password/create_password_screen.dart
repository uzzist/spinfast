import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:spinfast/utils/extensions/extensions.dart';
import 'package:spinfast/views/widgets/custom_appbar.dart';

import '../../../utils/values/my_colors.dart';
import '../../../utils/values/my_images.dart';
import '../../../utils/values/styles.dart';
import '../../widgets/custom_button.dart';
import '../../widgets/custom_textfield.dart';

class CreatePasswordScreen extends StatelessWidget {
  const CreatePasswordScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        title: '',
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 22.w),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              70.sbh,
              Center(
                child: Text(
                  'Create a new password',
                  style:
                  kSize16DarkW500Text.copyWith(fontWeight: FontWeight.w600),
                ),
              ),
              8.sbh,
              Text(
                'Your new password must be different from previous used passwords.',
                style: kSize12DarkW500Text.copyWith(
                    fontWeight: FontWeight.w400, fontSize: 10.sp),
                textAlign: TextAlign.center,
              ),
              30.sbh,
              Text(
                'Password',
                style:
                kSize12DarkW500Text.copyWith(color: MyColors.midnightBlue),
              ),
              8.sbh,
              CustomTextField(
                inputFormatters:
                FilteringTextInputFormatter.singleLineFormatter,
                length: 20,
                keyboardType: TextInputType.text,
                obscureText: true,
                showEyeIcon: true,
              ),
              8.sbh,
              Text(
                'Confirm Password',
                style:
                kSize12DarkW500Text.copyWith(color: MyColors.midnightBlue),
              ),
              8.sbh,
              CustomTextField(
                inputFormatters:
                FilteringTextInputFormatter.singleLineFormatter,
                length: 20,
                keyboardType: TextInputType.text,
                obscureText: true,
                showEyeIcon: true,
              ),
              40.sbh,
              Center(
                  child: CustomButton(
                      text: 'Next',
                      onPressed: () {
                        showDialog(
                            context: context,
                            builder: (context) {
                              return AlertDialog(
                                contentPadding: EdgeInsets.zero,
                                backgroundColor: MyColors.white,
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(50.r)),
                                content: Container(
                                  height: 318.h,
                                  width: 300.w,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(50.r),
                                    color: MyColors.white,
                                  ),
                                  child: Center(
                                    child: Column(
                                      mainAxisAlignment:
                                      MainAxisAlignment.center,
                                      children: [
                                        Image.asset(
                                          MyImages.tick_square,
                                          height: 66.h,
                                          width: 66.w,
                                        ),
                                        20.sbh,
                                        Text(
                                          'Password changed successfully',
                                          style: kSize20DarkW500Text.copyWith(
                                              fontWeight: FontWeight.w700),
                                          textAlign: TextAlign.center,
                                        ),
                                        20.sbh,
                                        Text(
                                          'We recommend that you write down so you don\'t forget, okay?',
                                          style: kSize12DarkW500Text,
                                          textAlign: TextAlign.center,
                                        )
                                      ],
                                    ),
                                  ),
                                ),
                              );
                            });
                      })),
            ],
          ),
        ),
      ),
    );
  }
}
