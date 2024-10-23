import 'package:delivery/features/home/presentation/views/widgets/custom_drawer_header.dart';
import 'package:delivery/features/orders/views/orders_view.dart';
import 'package:delivery/features/payment/presentation/views/pyment_view.dart';
import 'package:delivery/features/profile/views/profile_view.dart';
import 'package:flutter/material.dart';

class DrawerView extends StatefulWidget {
  const DrawerView({super.key});

  @override
  State<DrawerView> createState() => _DrawerViewState();
}

class _DrawerViewState extends State<DrawerView> {
  bool isDark = false;

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Colors.white,
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          const CustomDrawerHeader(),
          DrawerListTile(
            icon: Icons.dark_mode,
            title: 'Dark Mode',
            trailing: Switch(
              value: isDark,
              onChanged: (value) {
                setState(() {
                  isDark = value;
                });
              },
              inactiveTrackColor: Colors.grey[300],
              inactiveThumbColor: Colors.grey,
            ),
            onTap: () {
              // إضافة ما تود فعله عند الضغط على Dark Mode
            },
          ),
          DrawerListTile(
            icon: Icons.info_outline,
            title: 'Account Information',
            onTap: () {
              Navigator.of(context).pushNamed(ProfileView.id);
            },
          ),
          DrawerListTile(
            icon: Icons.lock_outline,
            title: 'Password',
            onTap: () {},
          ),
          DrawerListTile(
            icon: Icons.shopping_bag_outlined,
            title: 'Order',
            onTap: () {
              Navigator.pushNamed(context, OrdersView.id);
            },
          ),
          DrawerListTile(
            icon: Icons.credit_card,
            title: 'My Cards',
            onTap: () {
              Navigator.pushNamed(context, PymentView.id);
            },
          ),
          DrawerListTile(
            icon: Icons.favorite_outline,
            title: 'Wishlist',
            onTap: () {},
          ),
          DrawerListTile(
            icon: Icons.settings_outlined,
            title: 'Settings',
            onTap: () {},
          ),
          DrawerListTile(
            icon: Icons.logout,
            title: 'Logout',
            onTap: () {},
          ),
        ],
      ),
    );
  }
}

class DrawerListTile extends StatelessWidget {
  final IconData icon;
  final String title;
  final Widget? trailing;
  final VoidCallback? onTap;

  const DrawerListTile({
    super.key,
    required this.icon,
    required this.title,
    this.trailing,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: ListTile(
        leading: Icon(icon, color: Colors.grey[700]),
        title: Text(
          title,
          style: TextStyle(color: Colors.grey[700]),
        ),
        trailing: trailing,
      ),
    );
  }
}
