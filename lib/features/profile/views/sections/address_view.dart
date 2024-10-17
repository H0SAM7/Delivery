import 'package:delivery/core/utils/assets.dart';
import 'package:delivery/core/widgets/custom_app_bar.dart';
import 'package:delivery/features/auth/views/widgets/custom_send_button.dart';
import 'package:delivery/features/profile/views/sections/add_new_address_view.dart';
import 'package:delivery/features/profile/views/widgets/custom_list_tile.dart';
import 'package:delivery/features/profile/views/widgets/setting_container.dart';
import 'package:flutter/material.dart';

class AddressView extends StatelessWidget {
  const AddressView({super.key});
  static String id = 'AddressView';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const CustomAppBar(title: 'My Address'),
          SettingContainer(
            child: Column(
              children: [
                CustomListTile(
                  leading: Image.asset(Assets.iconsHomeAddressIcon),
                  title: 'Home',
                  subtitle: 'Sohag - Egypt',
                  trailing:    IconButton(
                          icon: Image.asset(Assets.iconsDeleteicon),
                          onPressed: () {}),
                ),
               CustomListTile(
                  leading: Image.asset(Assets.iconsHomeAddressIcon),
                  title: 'Work',
                  subtitle: 'Sohag - Egypt',
                  trailing:    IconButton(
                          icon: Image.asset(Assets.iconsDeleteicon),
                          onPressed: () {}),
                ),
SizedBox(height: 60,),
                CustomSendButton(label: 'Add new address',onTap: (){
                  Navigator.pushNamed(context, AddNewAddressView.id);
                },)
              ],
            ),
          )
        ],
      ),
    );
  }
}
