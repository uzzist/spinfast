import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:spinfast/data/data_binding/data_binding.dart';
import 'package:spinfast/utils/values/my_colors.dart';
import 'package:spinfast/views/auth/onboarding_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 812),
      minTextAdapt: true,
      splitScreenMode: true,
      // Use builder only if you need to use library outside ScreenUtilInit context
      builder: (_, child) {
        return GetMaterialApp(
          debugShowCheckedModeBanner: false,
          defaultTransition: Transition.rightToLeft,
          theme: ThemeData(
            primaryColor: MyColors.primary,
            useMaterial3: true,
          ),
          getPages: [
            GetPage(
                name: '/',
                page: () => OnBoardingScreen(),
                binding: DataBinding())
          ],
        );
      },
    );
  }
}
