import 'package:delivery/constants.dart';
import 'package:delivery/core/utils/assets.dart';
import 'package:delivery/core/widgets/custom_app_bar.dart';
import 'package:delivery/features/auth/views/widgets/custom_send_button.dart';
import 'package:delivery/features/payment/views/add_new_card_view.dart';
import 'package:flutter/material.dart';

class PymentView extends StatelessWidget {
  const PymentView({super.key});
  static String id = 'PymentView';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          CustomAppBar(title: 'Pyment'),
          Center(
              child: Image.asset(
            Assets.iconsNomastercard,
            filterQuality: FilterQuality.high,
          )),
          CustomSendButton(
            label: '+ Add New',
            onTap: () {
              Navigator.pushNamed(context, AddNewCard.id);
            },
            color: Colors.white,
            txtcolor: orangeColor,
          )
        ],
      ),
    );
  }
}
