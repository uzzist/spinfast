import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

extension Space on num {
  SizedBox get sh => SizedBox(
        height: ScreenUtil().setHeight(toDouble()),
      );

  SizedBox get sw => SizedBox(
        width: ScreenUtil().setWidth(toDouble()),
      );
}
