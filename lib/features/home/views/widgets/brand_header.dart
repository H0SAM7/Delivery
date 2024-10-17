
import 'package:delivery/core/utils/assets.dart';
import 'package:flutter/material.dart';

class BrandHeader extends StatelessWidget {
  const BrandHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        GestureDetector(
          onTap: (){
            Navigator.pop(context);
          },
          child: Image.asset(Assets.iconsBack)),
        const SizedBox(width: 10),
        const Text('Foods'),
        Spacer(),
        Image.asset(Assets.iconsSearchBlack),
        Image.asset(Assets.iconsFilter),
      ],
    );
  }
}