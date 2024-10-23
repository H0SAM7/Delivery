import 'package:delivery/bottom_navigator_bar.dart';
import 'package:delivery/core/utils/assets.dart';
import 'package:delivery/core/widgets/custom_app_bar.dart';
import 'package:delivery/features/profile/views/widgets/apps_section.dart';
import 'package:delivery/features/profile/views/widgets/info_section.dart';
import 'package:delivery/features/profile/views/widgets/item_setting.dart';
import 'package:delivery/features/profile/views/widgets/setting_container.dart';
import 'package:delivery/features/profile/views/widgets/settings_section.dart';
import 'package:delivery/features/profile/views/widgets/user_details_section.dart';
import 'package:flutter/material.dart';

class ProfileView extends StatelessWidget {
  const ProfileView({super.key});
  static String id = 'ProfileView';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: CustomAppBar(title: 'Profile',widget: Image.asset(Assets.iconsMore),onTap: (){
                Navigator.pushReplacementNamed(context, BottomNavigator.id);
              },),
            ),
            // Padding(
            //   padding: const EdgeInsets.only(top: 30.0, left: 20, right: 20),
            //   child: Row(
            //     mainAxisAlignment: MainAxisAlignment.spaceBetween,
            //     children: [
            //       const Text('Profile'),
            //       Image.asset(Assets.iconsMore),
            //     ],
            //   ),
            // ),
            const UserDetailsSection(),
            const SettingContainer(
              child: InfoSection(),
            ),
            const SettingContainer(
              child: AppSections(),
            ),
            const SettingContainer(
              child: SettingsSection(),
            ),
            SettingContainer(
              child: ItemSetting(
                leading: Image.asset(Assets.iconsLogoutIcon),
                title: 'Log out',
              ),
            ),
          ],
        ),
      ),
    );
  }
}
