import 'package:delivery/core/styles/app_styles.dart';
import 'package:flutter/material.dart';

class PaymentItemInfo extends StatelessWidget {
  const PaymentItemInfo({super.key, required this.title, required this.value});
  final String title, value;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          title,
          textAlign: TextAlign.center,
          style: AppStyles.style18(context),
        ),
        Text(
          value,
          style: AppStyles.styleBold18,
        )
      ],
    );
  }
}
