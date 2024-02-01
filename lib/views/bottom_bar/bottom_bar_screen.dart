import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:spinfast/views/cart/my_cart_screen.dart';
import 'package:spinfast/views/favourites/favourites_screen.dart';
import 'package:spinfast/views/orders/my_orders_screen.dart';
import 'package:spinfast/views/profile/profile_screen.dart';

import '../../utils/values/my_colors.dart';
import '../home/home_screen.dart';

class BottomBarScreen extends StatefulWidget {
  @override
  State<BottomBarScreen> createState() => _BottomBarScreenState();
}
class _BottomBarScreenState extends State<BottomBarScreen> {
  final List<Widget> _screens = [
    HomeScreen(),
    MyOrdersScreen(),
    FavouritesScreen(),
    MyCartScreen(),
    ProfileScreen()
  ];
  int _selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyColors.white,
      bottomNavigationBar: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 10.h),
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.only(topRight: Radius.circular(23.r), bottomLeft: Radius.circular(23.r)),
            boxShadow: [
              BoxShadow(color: MyColors.black.withOpacity(.2), spreadRadius: 0.2, blurRadius: 5, offset: Offset(0, 1),),
            ],
          ),
          child: ClipRRect(
            borderRadius: BorderRadius.only(bottomLeft: Radius.circular(23.r), topRight: Radius.circular(23.r)),
            child: BottomNavigationBar(
              type: BottomNavigationBarType.fixed,
              items: const <BottomNavigationBarItem>[
                BottomNavigationBarItem(
                  icon: Icon(Icons.home, ),
                  label: 'Home',
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.shopping_bag, ),
                  label: 'Orders',
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.favorite, ),
                  label: 'Favourites',
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.shopping_cart, ),
                  label: 'Cart',
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.person, ),
                  label: 'Profile',
                ),
              ],
              currentIndex: _selectedIndex,
              selectedItemColor: MyColors.primary,
              unselectedItemColor: Colors.grey,
              unselectedFontSize: 12.sp,
              selectedFontSize: 12.sp,
              backgroundColor: MyColors.white,
              elevation: 5.0,
              // showSelectedLabels: true, // Set to true to always show labels for selected icons
              // showUnselectedLabels: true, // Set to true to always show labels for unselected icons
              onTap: (index) {
                // Handle the tap event and update the selected index
                setState(() {
                  _selectedIndex = index;
                });
              },
            ),
          ),
        ),
      ),
      body: _screens[_selectedIndex],
    );
  }
}