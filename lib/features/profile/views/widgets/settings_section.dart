
import 'package:delivery/core/utils/assets.dart';
import 'package:delivery/features/profile/views/widgets/item_setting.dart';
import 'package:flutter/material.dart';

class SettingsSection extends StatelessWidget {
  const SettingsSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ItemSetting(
          leading: Image.asset(Assets.iconsFaqsIcon),
          title: 'FAQs',
        ),
        ItemSetting(
          leading: Image.asset(Assets.iconsReviewsIcon),
          title: 'User Reviews',
        ),
   ItemSetting(
          leading: Image.asset(Assets.iconsSettingsIcon),
          title: 'Settings',
        ),
      ],
    );
  }
}