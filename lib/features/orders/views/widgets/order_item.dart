import 'package:delivery/constants.dart';
import 'package:delivery/features/auth/views/widgets/custom_send_button.dart';
import 'package:flutter/material.dart';

class OrderItem extends StatelessWidget {
  const OrderItem({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 10,
          ),
          ListTile(
            leading: Container(
              width: 60,
              height: 60,
              color: Color(0xff6B6E82),
            ),
            title: Text('Pizza Hut'),
            subtitle: Text('\$35.25   |   03 Items'),
            trailing: Text('#162432'),
          ),
          const SizedBox(height: 24.0),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CustomSendButton(
                label: 'Track Order',
                width: 140,
                onTap: () {},
              ),
              const SizedBox(width: 16.0),
              CustomSendButton(
                label: 'Cancel',
                width: 140,
                onTap: () {},
                color: Colors.white,
                txtcolor: orangeColor,
              ),
            ],
          ),
          const Divider(),
        ],
      ),
    );
  }
}
