import 'package:delivery/constants.dart';
import 'package:delivery/core/utils/assets.dart';
import 'package:delivery/features/home/views/home_view.dart';
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
    HomeView(),
    HomeView(),
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
            icon: Image.asset(Assets.iconsHome,color: Color(0xffAFAFAF),height: 20,),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Image.asset(Assets.iconsSearch,color: Color(0xffAFAFAF),height: 20,),
            label: 'Search',
          ),
          BottomNavigationBarItem(
            icon: Image.asset(Assets.iconsPlusIcon),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Image.asset(Assets.iconsBell,color: Color(0xffAFAFAF),height: 20,),
            label: 'Notifications',
          ),
          BottomNavigationBarItem(
            icon:Image.asset(Assets.iconsUser,color: Color(0xffAFAFAF),height: 20,),
            label: 'Profile',
          ),
          
        ],
        selectedItemColor: orangeColor,
        selectedLabelStyle: TextStyle(color:orangeColor),
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

