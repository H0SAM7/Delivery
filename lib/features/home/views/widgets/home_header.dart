
import 'package:delivery/constants.dart';
import 'package:delivery/core/utils/assets.dart';
import 'package:flutter/material.dart';

class HomeHeader extends StatelessWidget {
  const HomeHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: const CustomDrawer(),
      title: Text(
        'Deliver to',
        style: TextStyle(color: orangeColor),
      ),
      subtitle: const Text(
        'Hosam Lab office',
        style: TextStyle(color: Color(0xff676767)),
      ),
      trailing: const ShopinngBag(),
    );
  }
}

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Image.asset(Assets.iconsMenu);
  }
}

class ShopinngBag extends StatelessWidget {
  const ShopinngBag({super.key});

  @override
  Widget build(BuildContext context) {
    return Image.asset(Assets.iconsCart);
  }
}