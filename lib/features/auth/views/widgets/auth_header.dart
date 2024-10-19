import 'package:flutter/material.dart';

class AuthHeader extends StatelessWidget {
  const AuthHeader({
    super.key,
    required this.title,
    required this.subTitle,
  });
  final String title;
  final String subTitle;
  @override
  Widget build(BuildContext context) {
    return Center(
        child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          title,
          style: TextStyle(color: Colors.white, fontSize: 20),
        ),
        Text(
          subTitle,
          style: TextStyle(color: Colors.white.withOpacity(.5), fontSize: 14),
        )
      ],
    ));
  }
}
