
import 'package:delivery/core/utils/assets.dart';
import 'package:delivery/features/profile/views/sections/personal_info_view.dart';
import 'package:delivery/features/profile/views/widgets/item_setting.dart';
import 'package:flutter/material.dart';

class InfoSection extends StatelessWidget {
  const InfoSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        GestureDetector(
          onTap: (){
            Navigator.pushNamed(context, PersonalInfoView.id);
          },
          child: ItemSetting(
            leading: Image.asset(Assets.iconsProfile),
            title: 'Personal Info',
          ),
        ),
        ItemSetting(
          leading: Image.asset(Assets.iconsAddress),
          title: 'Address',
        ),
      ],
    );
  }
}


