import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:spinfast/utils/extensions/extensions.dart';
import 'package:spinfast/utils/values/my_colors.dart';
import 'package:spinfast/utils/values/styles.dart';
import 'package:spinfast/views/widgets/custom_appbar.dart';
import 'package:spinfast/views/widgets/laundromat_widget.dart';

class FavouritesScreen extends StatelessWidget {
  const FavouritesScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        title: 'Your favourites',
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 22.w, vertical: 12.h),
        child: GridView.builder(
          shrinkWrap: true,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2, // 2 items in a row
            crossAxisSpacing: 6.0, // spacing between items
            mainAxisSpacing: 6.0,
            childAspectRatio: 0.8
          ),
          itemBuilder: (BuildContext context, int index) {
            return LaundromatWidget();
          },
          itemCount: 4, // You can change this to the actual number of items you have
        ),
      ),
    );
  }
}
