
import 'package:delivery/features/auth/views/widgets/custom_send_button.dart';
import 'package:delivery/features/auth/views/widgets/custom_text_field.dart';
import 'package:flutter/material.dart';

class PaymentBottomSheetView extends StatelessWidget {
  const PaymentBottomSheetView({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:
          EdgeInsets.only(bottom: MediaQuery.of(context).viewInsets.bottom),
      child: const Column(
            mainAxisSize: MainAxisSize.min, // Ensures the Column wraps its content

        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 30,
          ),
          Text('Address'),
          CustomTextFrom(
              label: 'Sohag - sohag 15 street',
              hint: 'Sohag - sohag 15 street'),
          SizedBox(
            height: 15,
          ),
          Text('Total:  \$66'),
          SizedBox(
            height: 20,
          ),
          Center(child: CustomSendButton(label: 'Order Now')),
            SizedBox(
            height: 30,
          ),
        ],
      ),
    );
  }
}
