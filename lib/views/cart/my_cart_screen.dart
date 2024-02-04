import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:spinfast/controllers/cart_controller/cart_controller.dart';
import 'package:spinfast/utils/extensions/extensions.dart';
import 'package:spinfast/utils/values/my_colors.dart';
import 'package:spinfast/utils/values/my_images.dart';
import 'package:spinfast/utils/values/styles.dart';
import 'package:spinfast/views/widgets/custom_appbar.dart';
import 'package:spinfast/views/widgets/custom_button.dart';

class MyCartScreen extends StatelessWidget {
  MyCartScreen({Key? key}) : super(key: key);

  final CartController controller = Get.find();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        title: 'My Cart',
      ),
      body: Obx(()
        => controller.cartEmpty.value ? Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(MyImages.empty_cart, height: 141.h, width: 193.w,),
              8.sbh,
              Text('Your cart is empty and sad :(', style: kSize14DarkW500Text.copyWith(fontWeight: FontWeight.w600),),
              8.sbh,
              Text('Add something to make it happy!', style: kSize12DarkW500Text.copyWith(color: MyColors.black.withOpacity(.4), fontWeight: FontWeight.w400),),
              40.sbh,
              CustomButton(text: 'Book now', onPressed: (){
                controller.cartEmpty.value = false;
              })
            ],
          ),
        ) : SizedBox.shrink(),
      ),
    );
  }
}
