import 'package:delivery/constants.dart';
import 'package:delivery/core/utils/assets.dart';
import 'package:delivery/core/widgets/custom_app_bar.dart';
import 'package:delivery/features/profile/views/widgets/apps_section.dart';
import 'package:delivery/features/profile/views/widgets/info_section.dart';
import 'package:delivery/features/profile/views/widgets/item_setting.dart';
import 'package:delivery/features/profile/views/widgets/setting_container.dart';
import 'package:delivery/features/profile/views/widgets/settings_section.dart';
import 'package:delivery/features/profile/views/widgets/user_details_section.dart';
import 'package:delivery/features/splash/views/widgets/custom_appbar.dart';
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
              padding: const EdgeInsets.only(top: 30.0,left: 20,right: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Profile'),
                  Image.asset(Assets.iconsMore),
                ],
              ),
            ),
            UserDetailsSection(),
            SettingContainer(
              child: InfoSection(),
            ),
            SettingContainer(
              child: AppSections(),
            ),
            SettingContainer(
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
