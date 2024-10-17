
import 'package:delivery/core/utils/assets.dart';
import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key, required this.title, this.widget});
final String title;
final Widget? widget;
  @override
  Widget build(BuildContext context) {
    return Padding(
  padding: const EdgeInsets.symmetric(horizontal: 10.0,vertical: 30),
      child: Row(
        children: [
          GestureDetector(
            onTap: (){
              Navigator.pop(context);
            },
            child: Image.asset(Assets.iconsBack)),
          const SizedBox(width: 10),
           Text(title),
          Spacer(),
          widget??SizedBox()
          
        ],
      ),
    );
  }
}