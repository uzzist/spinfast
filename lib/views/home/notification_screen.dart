import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:spinfast/utils/extensions/extensions.dart';
import 'package:spinfast/utils/values/my_images.dart';
import 'package:spinfast/utils/values/styles.dart';
import 'package:spinfast/views/widgets/custom_appbar.dart';
import 'package:spinfast/views/widgets/home/notification_widget.dart';

import '../../utils/values/my_colors.dart';

class NotificationScreen extends StatelessWidget {
  const NotificationScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        title: 'Notifications',
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 22.w),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Today', style: kSize14DarkW500Text.copyWith(fontWeight: FontWeight.w600),),
            8.sbh,
            Expanded(
              child: ListView.separated(
                  itemBuilder: (context, index) {
                    return NotificationWidget();
                  }, separatorBuilder: (context, index) => 8.sbh, itemCount: 3),
            )
          ],
        ),
      ),
    );
  }
}
