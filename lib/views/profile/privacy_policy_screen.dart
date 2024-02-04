import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:spinfast/utils/extensions/extensions.dart';
import 'package:spinfast/utils/values/my_colors.dart';
import 'package:spinfast/utils/values/styles.dart';
import 'package:spinfast/views/widgets/custom_appbar.dart';

class PrivacyPolicyScreen extends StatelessWidget {
  const PrivacyPolicyScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        title: 'Privacy Policy',
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 22.w),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            30.sbh,
            Text(
              '1. YOUR AGREEMENT',
              style: kSize12DarkW500Text.copyWith(
                fontWeight: FontWeight.w600,
                color: MyColors.dark,
              ),
            ),
            8.sbh,
            Text(
              'By using this Site, you agree to be bound by, and to comply with, these Terms and Conditions. If you do not agree to these Terms and Conditions, please do not use this site.',
              style: kSize12DarkW500Text.copyWith(
                  color: MyColors.black.withOpacity(.4),
                  fontWeight: FontWeight.w400),
            ),
            8.sbh,
            Text(
              'PLEASE NOTE: We reserve the right, at our sole discretion, to change, modify or otherwise alter these Terms and Conditions at any time. Unless otherwise indicated, amendments will become effective immediately. Please review these Terms and Conditions periodically. Your continued use of the Site following the posting of changes and/or modifications will constitute your acceptance of the revised Terms and Conditions and the reasonableness of these standards for notice of changes. For your information, this page was last updated as of the date at the top of these terms and conditions.',
              style: kSize12DarkW500Text.copyWith(
                  color: MyColors.black.withOpacity(.4),
                  fontWeight: FontWeight.w400),
            ),
            12.sbh,
            Text(
              '2. PRIVACY',
              style: kSize12DarkW500Text.copyWith(
                fontWeight: FontWeight.w600,
                color: MyColors.dark,
              ),
            ),
            8.sbh,
            Text(
              'Please review our Privacy Policy, which also governs your visit to this Site, to understand our practices.',
              style: kSize12DarkW500Text.copyWith(
                  color: MyColors.black.withOpacity(.4),
                  fontWeight: FontWeight.w400),
            ),
            12.sbh,
            Text(
              '3. LINKED SITES',
              style: kSize12DarkW500Text.copyWith(
                fontWeight: FontWeight.w600,
                color: MyColors.dark,
              ),
            ),
            8.sbh,
            Text(
              'This Site may contain links to other independent third-party Web sites ("Linked Sites”). provided solely as a convenience to our visitors. ',
              style: kSize12DarkW500Text.copyWith(
                  color: MyColors.black.withOpacity(.4),
                  fontWeight: FontWeight.w400),
            ),
          ],
        ),
      ),
    );
  }
}
