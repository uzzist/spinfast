import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:spinfast/controllers/cart_controller/cart_controller.dart';
import 'package:spinfast/utils/extensions/extensions.dart';
import 'package:spinfast/utils/values/my_colors.dart';
import 'package:spinfast/utils/values/my_images.dart';
import 'package:spinfast/utils/values/styles.dart';
import 'package:spinfast/views/cart/checkout_one.dart';
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
      body: Obx(
        () => controller.cartEmpty.value
            ? Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(
                      MyImages.empty_cart,
                      height: 141.h,
                      width: 193.w,
                    ),
                    8.sbh,
                    Text(
                      'Your cart is empty and sad :(',
                      style: kSize14DarkW500Text.copyWith(
                          fontWeight: FontWeight.w600),
                    ),
                    8.sbh,
                    Text(
                      'Add something to make it happy!',
                      style: kSize12DarkW500Text.copyWith(
                          color: MyColors.black.withOpacity(.4),
                          fontWeight: FontWeight.w400),
                    ),
                    40.sbh,
                    CustomButton(
                        text: 'Book now',
                        onPressed: () {
                          controller.cartEmpty.value = false;
                        })
                  ],
                ),
              )
            : SingleChildScrollView(
              child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 22.w),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      40.sbh,
                      Row(
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(6.r),
                            child: Image.asset(
                              MyImages.laundromat,
                              height: 62.h,
                              width: 68.w,
                              fit: BoxFit.cover,
                            ),
                          ),
                          12.sbw,
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Lorem Ipsm Laundry Newcomb',
                                style: kSize14DarkW500Text,
                              ),
                              Row(
                                children: [
                                  Icon(
                                    Icons.location_on,
                                    color: MyColors.black.withOpacity(.6),
                                    size: 16.h,
                                  ),
                                  Text(
                                    'Shop 8, 167 Shaws RoadWerribee 3030',
                                    style: kSize12DarkW500Text.copyWith(
                                        color: MyColors.black.withOpacity(.6),
                                        fontSize: 10.sp),
                                  )
                                ],
                              ),
                              Row(
                                children: [
                                  Icon(
                                    Icons.access_time_filled,
                                    color: MyColors.black.withOpacity(.6),
                                    size: 16.h,
                                  ),
                                  Text(
                                    '6:00am - 9:00pm',
                                    style: kSize12DarkW500Text.copyWith(
                                        color: MyColors.black.withOpacity(.6),
                                        fontSize: 10.sp),
                                  )
                                ],
                              ),
                            ],
                          ),
                        ],
                      ),
                      30.sbh,
                      ListView.builder(
                        physics: NeverScrollableScrollPhysics(),
                        itemCount: 2,
                          shrinkWrap: true,
                          itemBuilder: (context, index) {
                            return ListView.builder(
                                physics: NeverScrollableScrollPhysics(),
                              itemCount: 4,
                                shrinkWrap: true,
                                itemBuilder: (context, index2) {
                                  return Column(
                                    children: [
                                      Visibility(
                                        visible: index2 == 0,
                                          child: Container(
                                            height: 28.h,
                                            width: double.infinity,
                                            color: MyColors.primary.withOpacity(.2),
                                            padding: EdgeInsets.symmetric(horizontal: 8.w),
                                            child: Row(
                                              children: [
                                                Image.asset(MyImages.wash_icon, height: 15.h, width: 15.w, color: MyColors.primary,),
                                                Text('Wash Fold', style: kSize12DarkW500Text.copyWith(color: MyColors.primary),)
                                              ],
                                            ),
                                          ),
                                      ),
                                      Row(
                                        children: [
                                          Column(
                                            children: [
                                              Text('Blouse', style: kSize12DarkW500Text,),
                                              Text('₹1099', style: kSize12DarkW500Text.copyWith(color: MyColors.black.withOpacity(.4)),)
                                            ],
                                          ),
                                          Spacer(),
                                          Container(
                                            width: 68.w,
                                            decoration: BoxDecoration(
                                              color: MyColors.white,
                                              borderRadius: BorderRadius.circular(34.r),
                                              boxShadow: [
                                                BoxShadow(
                                                  color: MyColors.black.withOpacity(.1),
                                                  offset: Offset(0,7),
                                                  blurRadius: 17,
                                                  spreadRadius: 0
                                                )
                                              ]
                                            ),
                                            child: Center(
                                              child: Row(
                                                mainAxisAlignment: MainAxisAlignment.center,
                                                children: [
                                                  Text('04', style: kSize12DarkW500Text.copyWith(fontWeight: FontWeight.w400, color: MyColors.primary),),
                                                  4.sbw,
                                                  Column(
                                                    children: [
                                                      Icon(Icons.keyboard_arrow_up, color: MyColors.black, size: 12.h,),
                                                      Icon(Icons.keyboard_arrow_down, color: MyColors.black, size: 12.h,),
                                                    ],
                                                    mainAxisAlignment: MainAxisAlignment.center,
                                                  )
                                                ],
                                              ),
                                            ),
                                          )
                                        ],
                                      ),
                                      SizedBox(
                                        child: Divider(),
                                      ),
                                    ],
                                  );
                                });
                          }
                      ),
                      40.sbh,
                      Text('Discount Codes', style: kSize14DarkW500Text,),
                      Text('Enter your coupon code if you have one', style: kSize12DarkW500Text.copyWith(color: MyColors.black.withOpacity(.4)),),
                      10.sbh,
                      Container(
                        height: 32.h,
                        width: 227.w,
                        decoration: BoxDecoration(
                          color: MyColors.white,
                          border: Border.all(color: MyColors.black)
                        ),
                        child: TextFormField(
                          maxLength: 8,
                          decoration: InputDecoration(
                            counterText: "",
                            border: InputBorder.none,
                            suffixIcon: Container(
                              height: 32.h,
                              width: 98.w,
                              color: MyColors.primary,
                              child: Center(
                                child: Text('Apply coupon', style: kSize12DarkW500Text.copyWith(color: MyColors.white),),
                              ),
                            )
                          ),
                        ),
                      ),
                      40.sbh,
                      Row(
                        children: [
                          Text('Subtotal', style: kSize12DarkW500Text.copyWith(fontWeight: FontWeight.w600),),
                          Spacer(),
                          Text('250,000.00', style: kSize12DarkW500Text.copyWith(fontWeight: FontWeight.w600),),
                        ],
                      ),
                      4.sbh,
                      Row(
                        children: [
                          Text('Pickup charges', style: kSize12DarkW500Text.copyWith(fontWeight: FontWeight.w400, color: MyColors.black.withOpacity(.6))),
                          Spacer(),
                          Text('250', style: kSize12DarkW500Text.copyWith(fontWeight: FontWeight.w400, color: MyColors.black.withOpacity(.6)),),
                        ],
                      ),
                      4.sbh,
                      Row(
                        children: [
                          Text('Delivery charges', style: kSize12DarkW500Text.copyWith(fontWeight: FontWeight.w400, color: MyColors.black.withOpacity(.6))),
                          Spacer(),
                          Text('250', style: kSize12DarkW500Text.copyWith(fontWeight: FontWeight.w400, color: MyColors.black.withOpacity(.6)),),
                        ],
                      ),
                      16.sbh,
                      SizedBox(
                        child: Divider(),
                      ),
                      12.sbh,
                      Row(
                        children: [
                          Text('Total', style: kSize12DarkW500Text.copyWith(fontWeight: FontWeight.w600, color: MyColors.primary),),
                          Spacer(),
                          Text('250,000.00', style: kSize12DarkW500Text.copyWith(fontWeight: FontWeight.w600, color: MyColors.primary),),
                        ],
                      ),
                      40.sbh,
                      Center(
                        child: CustomButton(
                          onPressed: (){
                            Get.to(() => CheckoutOneScreen());
                          },
                          text: 'Checkout',
                        ),
                      )
                    ],
                  ),
                ),
            ),
      ),
    );
  }
}
