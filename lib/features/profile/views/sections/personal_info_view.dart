import 'package:delivery/constants.dart';
import 'package:delivery/core/utils/assets.dart';
import 'package:delivery/core/widgets/custom_app_bar.dart';
import 'package:delivery/features/profile/views/sections/edit_profile_view.dart';
import 'package:delivery/features/profile/views/widgets/custom_list_tile.dart';
import 'package:delivery/features/profile/views/widgets/setting_container.dart';
import 'package:delivery/features/profile/views/widgets/user_details_section.dart';
import 'package:flutter/material.dart';

class PersonalInfoView extends StatelessWidget {
  const PersonalInfoView({super.key});
  static String id = 'PersonalInfoView';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          CustomAppBar(
            title: 'Personal Info',
            widget: TextButton(
              onPressed: () {
                Navigator.pushNamed(context, EditProfileView.id);
              },
              child: Text(
                'Edit',
                style: TextStyle(
                  color: orangeColor,
                ),
              ),
            ),
          ),
          const UserDetailsSection(),
          const SettingContainer(
            child: PersonalInfoSection(),
          )
        ],
      ),
    );
  }
}

class PersonalInfoSection extends StatelessWidget {
  const PersonalInfoSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CustomListTile(
          title: 'Full Name',
          subtitle: 'Hosam Adel',
          leading: Image.asset(
            Assets.iconsProfile,
          ),
        ),
        CustomListTile(
          title: 'Email',
          subtitle: 'Hosam@gmail.com',
          leading: Image.asset(
            Assets.iconsEmailIcon,
          ),
        ),
         CustomListTile(
          title: 'Phone Number',
          subtitle: '01098894833',
          leading: Image.asset(
            Assets.iconsPhoneIcon,
          ),
        ),
      ],
    );
  }
}
