import 'package:delivery/constants.dart';
import 'package:delivery/features/auth/views/widgets/custom_send_button.dart';
import 'package:flutter/material.dart';

class HitstoryItem extends StatelessWidget {
  const HitstoryItem({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(
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
                label: 'Rate',
                width: 140,
                onTap: () {},
                color: Colors.white,
                txtcolor: orangeColor,
              ),
              const SizedBox(width: 16.0),
              CustomSendButton(
                label: 'Re-order',
                width: 140,
                onTap: () {},
              ),
            ],
          ),
          const Divider(),
        ],
      ),
    );
  }
}
