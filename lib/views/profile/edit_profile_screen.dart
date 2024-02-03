import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:spinfast/utils/extensions/extensions.dart';
import 'package:spinfast/utils/values/my_images.dart';
import 'package:spinfast/utils/values/styles.dart';
import 'package:spinfast/views/widgets/custom_appbar.dart';
import 'package:spinfast/views/widgets/custom_button.dart';
import 'package:spinfast/views/widgets/custom_textfield.dart';

class EditProfileScreen extends StatelessWidget {
  const EditProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        title: 'Edit Profile',
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 22.w),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(child: Image.asset(MyImages.profile_picture, height: 71.h, width: 71.w,)),
            28.sbh,
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
            Text('Email', style: kSize12DarkW500Text,),
            CustomTextField(
                length: 30,
                keyboardType: TextInputType.emailAddress,
                inputFormatters: FilteringTextInputFormatter.singleLineFormatter
            ),
            12.sbh,
            Text('Phone Number', style: kSize12DarkW500Text,),
            CustomTextField(
                length: 30,
                keyboardType: TextInputType.number,
                inputFormatters: FilteringTextInputFormatter.digitsOnly
            ),
            40.sbh,
            Center(child: CustomButton(text: 'Save', onPressed: () {}))
          ],
        ),
      ),
    );
  }
}
