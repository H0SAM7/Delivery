import 'package:delivery/features/auth/views/widgets/custom_send_button.dart';
import 'package:delivery/features/auth/views/widgets/custom_text_field.dart';
import 'package:delivery/features/payment/presentation/views/chose_payment_view.dart';
import 'package:flutter/material.dart';

class PaymentBottomSheetView extends StatelessWidget {
  const PaymentBottomSheetView({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:
          EdgeInsets.only(bottom: MediaQuery.of(context).viewInsets.bottom),
      child:  Column(
        mainAxisSize: MainAxisSize.min, // Ensures the Column wraps its content

        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          
          const SizedBox(
            height: 30,
          ),
          const Text('Address'),
          const CustomTextFrom(
              label: 'Sohag - sohag 15 street',
              hint: 'Sohag - sohag 15 street'),
          const SizedBox(
            height: 15,
          ),
          const Text('Total:  \$66'),
          const SizedBox(
            height: 20,
          ),
          Center(child: CustomSendButton(label: 'Order Now',onTap: (){
            Navigator.pushNamed(context, ChosePaymentView.id);
          },)),
          const SizedBox(
            height: 30,
          ),
        ],
      ),
    );
  }
}
