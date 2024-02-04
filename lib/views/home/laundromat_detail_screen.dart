import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:spinfast/utils/values/my_images.dart';

import '../../utils/values/my_colors.dart';

class LaundromatDetailScreen extends StatelessWidget {
  const LaundromatDetailScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            height: 260.h,
            width: double.infinity,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(MyImages.laundromat),
                fit: BoxFit.cover,
              )
            ),
          ),
          Expanded(
              child: Container(
                width: double.infinity,
                decoration: BoxDecoration(
                  color: MyColors.white,
                  borderRadius: BorderRadius.only(topLeft: Radius.circular(24.r), topRight: Radius.circular(24.r))
                ),
                child: Column(
                  children: [

                  ],
                ),
              ),
          )
        ],
      ),

    );
  }
}
