
import 'package:delivery/features/payment/views/widgets/custom_check_icon.dart';
import 'package:delivery/features/payment/views/widgets/custom_dashed_line.dart';
import 'package:delivery/features/payment/views/widgets/thank_you_card.dart';
import 'package:flutter/material.dart';

class PaymentDoneView extends StatelessWidget {
  const PaymentDoneView({super.key});
static String id='PaymentDoneView';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Stack(
          clipBehavior: Clip.none,
          children: [
            const ThankYouCard(),
            Positioned(
              bottom: MediaQuery.sizeOf(context).height * .2 + 20,
              left: 20 + 8,
              right: 20 + 8,
              child: const CustomDashedLine(),
            ),
            Positioned(
                left: -20,
                bottom: MediaQuery.sizeOf(context).height * .2,
                child: const CircleAvatar(
                  backgroundColor: Colors.white,
                )),
            Positioned(
                right: -20,
                bottom: MediaQuery.sizeOf(context).height * .2,
                child: const CircleAvatar(
                  backgroundColor: Colors.white,
                )),
            const Positioned(
              top: -50,
              left: 0,
              right: 0,
              child: CustomCheckIcon(),
            ),
          ],
        ),
      ),
    );
  }
}
