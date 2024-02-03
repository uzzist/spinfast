import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:spinfast/utils/extensions/extensions.dart';
import 'package:spinfast/utils/values/my_colors.dart';
import 'package:spinfast/utils/values/my_images.dart';
import 'package:spinfast/utils/values/styles.dart';
import 'package:spinfast/views/auth/login/login_screen.dart';
import 'package:spinfast/views/profile/address/manage_address_screen.dart';
import 'package:spinfast/views/profile/change_password/change_profile_password_screen.dart';
import 'package:spinfast/views/profile/edit_profile_screen.dart';
import 'package:spinfast/views/widgets/custom_appbar.dart';
import 'package:spinfast/views/widgets/custom_button.dart';
import 'package:spinfast/views/widgets/profile/profile_option_widget.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyColors.primary,
      appBar: CustomAppBar(
        title: 'My Profile',
        backgroundColor: MyColors.primary,
        textColor: MyColors.white,
      ),
      body: Column(
        children: [
          Image.asset(
            MyImages.profile_picture,
            height: 56.h,
            width: 56.w,
          ),
          Text(
            'Criss Germano',
            style: kSize14DarkW500Text.copyWith(
                fontWeight: FontWeight.w600, color: MyColors.white),
          ),
          Text(
            'crissgermano@gmail.com',
            style: kSize12DarkW500Text.copyWith(color: MyColors.white),
          ),
          20.sbh,
          Expanded(
            child: Container(
              width: double.infinity,
              padding: EdgeInsets.symmetric(horizontal: 22.w),
              decoration: BoxDecoration(
                color: MyColors.white,
                borderRadius: BorderRadius.only(
                    topRight: Radius.circular(24.r),
                    topLeft: Radius.circular(24.r)),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  30.sbh,
                  Text(
                    'Profile',
                    style: kSize12DarkW500Text.copyWith(
                        color: MyColors.black.withOpacity(.4)),
                  ),
                  16.sbh,
                  ProfileOptionWidget(
                      onTap: () {
                        Get.to(() => EditProfileScreen());
                      },
                      text: 'Edit Profile',
                      image: MyImages.user_icon),
                  8.sbh,
                  ProfileOptionWidget(
                      onTap: () {
                        Get.to(() => ChangeProfilePasswordScreen());
                      },
                      text: 'Change password',
                      image: MyImages.key_icon),
                  8.sbh,
                  ProfileOptionWidget(
                      onTap: () {
                        Get.to(() => ManageAddressScreen());
                      },
                      text: 'Manage address',
                      image: MyImages.address_icon),
                  8.sbh,
                  ProfileOptionWidget(
                      onTap: () {},
                      text: 'Payment method',
                      image: MyImages.payment_icon),
                  20.sbh,
                  Text(
                    'Help and support',
                    style: kSize12DarkW500Text.copyWith(
                        color: MyColors.black.withOpacity(.4)),
                  ),
                  16.sbh,
                  ProfileOptionWidget(
                      onTap: () {},
                      text: 'Privacy policy',
                      image: MyImages.privacy_icon),
                  8.sbh,
                  ProfileOptionWidget(
                      onTap: () {},
                      text: 'Ask questions',
                      image: MyImages.ask_questions_icon),
                  8.sbh,
                  ProfileOptionWidget(
                      onTap: () {},
                      text: 'Support',
                      image: MyImages.support_icon),
                  32.sbh,
                  ProfileOptionWidget(
                    onTap: () {
                      showModalBottomSheet(
                          isScrollControlled: true,
                          context: context,
                          builder: (context) {
                            return Container(
                                height: 194.h,
                                width: double.infinity,
                                color: MyColors.white,
                                padding: EdgeInsets.symmetric(horizontal: 22.w),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Row(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          'Logout',
                                          style: kSize14DarkW500Text.copyWith(
                                              fontWeight: FontWeight.w700),
                                        ),
                                        Spacer(),
                                        IconButton(
                                          padding: EdgeInsets.zero,
                                          onPressed: () {
                                            Get.back();
                                          },
                                          icon: Icon(Icons.close),
                                        ),
                                      ],
                                    ),
                                    4.sbh,
                                    Text(
                                      'Are you sure you want to logout from the app?',
                                      style: kSize12DarkW500Text.copyWith(
                                          color: MyColors.black.withOpacity(.2),
                                          fontWeight: FontWeight.w400),
                                    ),
                                    32.sbh,
                                    Row(
                                      children: [
                                        CustomButton(
                                          text: 'Cancel',
                                          onPressed: () {
                                            Get.back();
                                          },
                                          width: 133.w,
                                          height: 48.h,
                                        ),
                                        8.sbw,
                                        CustomButton(
                                          text: 'Logout',
                                          onPressed: () {
                                            Get.offAll(() => LoginScreen());
                                          },
                                          backgroundColor: MyColors.red,
                                          height: 48.h,
                                          width: 184.w,
                                        ),
                                      ],
                                    )
                                  ],
                                ));
                          });
                    },
                    text: 'Logout',
                    image: MyImages.logout_icon,
                    textColour: MyColors.red,
                    iconColor: MyColors.red,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
