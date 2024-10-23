
import 'package:delivery/constants.dart';
import 'package:delivery/core/styles/app_styles.dart';
import 'package:delivery/core/utils/assets.dart';
import 'package:flutter/material.dart';

class NotifiItemView extends StatelessWidget {
  const NotifiItemView({super.key,  this.image,  this.title,  this.subtitle});
final String? image;
final String? title;

final String? subtitle;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        decoration: BoxDecoration(
          border: Border.all(color: orangeColor),
          borderRadius: BorderRadius.circular(16)
        ),
        child: ListTile(
          leading: CircleAvatar(
            backgroundColor: Colors.white,
              child: Image.asset(
            Assets.iconsNotifiIcon,
            fit: BoxFit.fill,
          )),
          title: Text(
            title??
            
            '',
            style: AppStyles.styleMedium18(context),
          ),
          subtitle:  Text(subtitle??''),
        ),
      ),
    );
  }
}
