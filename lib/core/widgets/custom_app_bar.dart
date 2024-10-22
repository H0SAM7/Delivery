import 'package:delivery/core/styles/app_styles.dart';
import 'package:delivery/core/utils/assets.dart';
import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key, required this.title, this.widget});
  final String title;
  final Widget? widget;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Row(
        children: [
          GestureDetector(
              onTap: () {
                Navigator.pop(context);
              },
              child: Image.asset(Assets.iconsBack)),
          const SizedBox(width: 20),
          Text(title,style: AppStyles.styleBold18,),
          const Spacer(),
          widget ?? const SizedBox()
        ],
      ),
    );
  }
}
