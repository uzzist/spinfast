import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:spinfast/utils/extensions/extensions.dart';
import 'package:spinfast/utils/values/my_images.dart';
import 'package:spinfast/utils/values/styles.dart';
import 'package:spinfast/views/auth/login/login_screen.dart';

import '../../utils/values/my_colors.dart';
import '../widgets/custom_button.dart';

class OnBoardingScreen extends StatefulWidget {
  const OnBoardingScreen({Key? key}) : super(key: key);

  @override
  State<OnBoardingScreen> createState() => _OnBoardingScreenState();
}

class _OnBoardingScreenState extends State<OnBoardingScreen> {
  final int _numPages = 3;
  final PageController _pageController = PageController(initialPage: 0);
  int _currentPage = 0;

  List<Widget> _buildPageIndicator() {
    List<Widget> list = [];
    for (int i = 0; i < _numPages; i++) {
      list.add(i == _currentPage ? _indicator(true) : _indicator(false));
    }
    return list;
  }

  Widget _indicator(bool isActive) {
    return AnimatedContainer(
      duration: Duration(milliseconds: 10),
      margin: EdgeInsets.symmetric(horizontal: 6.w),
      height: 8.h,
      width: isActive ? 20.w : 10.w,
      decoration: BoxDecoration(
        color: isActive ? MyColors.primary : MyColors.black.withOpacity(.4),
        borderRadius: BorderRadius.all(Radius.circular(6.r)),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0xFFE0FBFA),
        appBar: AppBar(
          actions: [
            Padding(
              padding: EdgeInsets.only(right: 20.w),
              child: GestureDetector(
                onTap: () {
                  Get.offAll(() => LoginScreen());
                },
                child: Text(
                  'Skip',
                  style: kSize16DarkW500Text.copyWith(color: MyColors.primary),
                ),
              ),
            )
          ],
        ),
        body: Container(
          color: MyColors.lightGray,
          height: double.infinity,
          child: Stack(
            children: [
              Container(
                height: 680.h,
                width: double.infinity,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(52.r),
                        bottomRight: Radius.circular(52.r)),
                    color: MyColors.lightGray,
                    boxShadow: [
                      BoxShadow(
                          offset: Offset(0, 4),
                          blurRadius: 40,
                          spreadRadius: 20,
                          color: MyColors.black.withOpacity(.12))
                    ]),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    30.sbh,
                    Container(
                      height: 500.h,
                      child: PageView(
                        physics: ClampingScrollPhysics(),
                        controller: _pageController,
                        onPageChanged: (int page) {
                          setState(() {
                            _currentPage = page;
                          });
                        },
                        children: [
                          _photos(
                            photo: MyImages.onboarding1,
                            headline: 'Pick up',
                            subtitle:
                                'One click to get the best laundry\nservice.',
                          ),
                          _photos(
                              photo: MyImages.onboarding2,
                              headline: 'Wash',
                              subtitle:
                                  'Professional and Hygienic laundry\nmethods'),
                          _photos(
                              photo: MyImages.onboarding3,
                              headline: 'Delivery',
                              subtitle:
                                  'Express Delivery with in 48 hours on\nrequest.'),
                        ],
                      ),
                    ),
                    20.sbh,
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: _buildPageIndicator(),
                    ),
                    60.sbh,
                  ],
                ),
              ),
              Positioned(
                bottom: 20.h,
                right: 70.w,
                child: CustomButton(
                  text: 'Next',
                  onPressed: () {
                    _currentPage == _numPages - 1 ? Get.offAll(() => LoginScreen()) :
                    _pageController.nextPage(
                      duration: Duration(milliseconds: 500),
                      curve: Curves.ease,
                    );
                  },
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  Widget _photos(
      {required String photo,
      required String headline,
      required String subtitle}) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Container(
          //   width: MediaQuery.of(context).size.width*1.0,
          height: 328.h,
          width: 328.w,
          decoration: BoxDecoration(
              image: DecorationImage(
            image: AssetImage(
              photo,
            ),
          )),
        ),
        20.sbh,
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 15.w),
          child: Text(
            headline,
            style: kSize22DarkW600Text.copyWith(fontWeight: FontWeight.w600),
            textAlign: TextAlign.center,
          ),
        ),
        20.sbh,
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 50.w),
          child: Text(
            subtitle,
            style: kSize12DarkW500Text.copyWith(
                fontWeight: FontWeight.w400, color: MyColors.mediumGray),
            textAlign: TextAlign.center,
          ),
        ),
      ],
    );
  }
}
