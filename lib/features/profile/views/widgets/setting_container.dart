import 'package:flutter/material.dart';

class SettingContainer extends StatelessWidget {
  const SettingContainer({
    super.key, this.child,
  });
final Widget? child;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: Color(0xffF6F8FA),
        borderRadius: BorderRadius.circular(25),
      ),
      child: child,
    );
  }
}