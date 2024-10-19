import 'package:delivery/features/auth/views/widgets/custom_send_button.dart';
import 'package:delivery/features/auth/views/widgets/custom_text_field.dart';
import 'package:flutter/material.dart';

class NewOrderView extends StatelessWidget {
  const NewOrderView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('New Order'),
      ),
      body: Column(
        children: [
          CustomTextFrom(label: 'Order Details', hint: 'Order Details'),
          CustomTextFrom(label: 'Brand Name', hint: 'Brand Name'),
          CustomTextFrom(label: 'Brand Address', hint: 'Brand Address'),
          CustomTextFrom(label: 'Brand Phone', hint: 'Brand Phone'),
          Divider(),
          CustomTextFrom(label: 'Your Address', hint: 'Your Address'),
          Spacer(),
          CustomSendButton(label: 'Contiue'),
          SizedBox(height: 15,)
        ],
      ),
    );
  }
}
