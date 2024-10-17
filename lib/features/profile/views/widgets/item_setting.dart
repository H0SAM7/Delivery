
import 'package:delivery/core/utils/assets.dart';
import 'package:flutter/material.dart';

class ItemSetting extends StatelessWidget {
  const ItemSetting({super.key, required this.title, this.leading});
  final String title;
  final Widget? leading;
  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: leading,
      title: Text(title),
      trailing: Image.asset(Assets.iconsChevronRight),
    );
  }
}
