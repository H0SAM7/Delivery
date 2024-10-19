import 'package:delivery/constants.dart';
import 'package:delivery/core/widgets/custom_app_bar.dart';
import 'package:delivery/features/auth/views/widgets/custom_send_button.dart';
import 'package:delivery/features/auth/views/widgets/custom_text_field.dart';
import 'package:delivery/features/payment/views/widgets/custom_credit_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_credit_card/flutter_credit_card.dart';

class AddNewCard extends StatefulWidget {
  const AddNewCard({super.key});
  static String id = 'AddNewCard';

  @override
  State<AddNewCard> createState() => _AddNewCardState();
}

class _AddNewCardState extends State<AddNewCard> {
    final GlobalKey<FormState> formKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(child: CustomAppBar(title: 'Add Card')),
          SliverToBoxAdapter(child: CustomCreditCard(formKey: formKey,)),
          SliverFillRemaining(
            hasScrollBody: false,
            child: Align(
              alignment: Alignment.bottomCenter,
              child: CustomSendButton(
                label: 'Add & Make Payment',
                onTap: () {},
              ),
            ),
          ),
         
        ],
      ),
    );
  }
}
