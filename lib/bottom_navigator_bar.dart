import 'package:delivery/constants.dart';
import 'package:delivery/core/utils/assets.dart';
import 'package:delivery/features/home/views/home_view.dart';
import 'package:delivery/features/orders/views/new_order_view.dart';
import 'package:delivery/features/orders/views/orders_view.dart';
import 'package:delivery/features/profile/views/profile_view.dart';
import 'package:flutter/material.dart';

class BottomNavigator extends StatefulWidget {
  const BottomNavigator({super.key});
  static String id = 'BottomNavigator';

  @override
  State<BottomNavigator> createState() => _BottomNavigatorState();
}

class _BottomNavigatorState extends State<BottomNavigator> {
  int _currentIndex = 0;

  final List<Widget> _children = [
    HomeView(),
    HomeView(),
    NewOrderView(),
    OrdersView(),
    ProfileView(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _children[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        onTap: onTabTapped,
        currentIndex: _currentIndex,
        items: [
          BottomNavigationBarItem(
            icon: Image.asset(
              Assets.iconsHome,
              color: orangeColor,
              height: 20,
            ),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Image.asset(
              Assets.iconsSearch,
              color: orangeColor,
              height: 20,
            ),
            label: 'Search',
          ),
          BottomNavigationBarItem(
            icon: Image.asset(Assets.iconsPlusIcon),
            label: '',
          ),
          BottomNavigationBarItem(
            // icon: Image.asset(
            //   Assets.o,
            //   color:  orangeColor,
            //   height: 20,
            // ),
            icon: Icon(
              Icons.shopping_cart_checkout,
              color: orangeColor,
            ),
            label: 'Orders',
          ),
          BottomNavigationBarItem(
            icon: Image.asset(
              Assets.iconsUser,
              color: orangeColor,
              height: 20,
            ),
            label: 'Profile',
          ),
        ],
        selectedItemColor: orangeColor,
        selectedLabelStyle: TextStyle(color: orangeColor),
        selectedFontSize: 10,
        showUnselectedLabels: false,
      ),
    );
  }

  void onTabTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }
}
