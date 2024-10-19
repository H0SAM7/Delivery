import 'package:delivery/constants.dart';
import 'package:delivery/core/utils/assets.dart';
import 'package:delivery/core/widgets/custom_app_bar.dart';
import 'package:flutter/material.dart';

class TrackOrderView extends StatelessWidget {
  const TrackOrderView({super.key});
  static String id = 'TrackOrderView';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffD0D9E1),
      body: Column(
        children: [
          CustomAppBar(title: 'Tracking Order'),
          Expanded(
              flex: 4,
              child: Image.asset(
                Assets.iconsTracking,
                fit: BoxFit.fitWidth,
              )),
          const Spacer(),
          Expanded(flex: 4, child: DeliveryTrackingSheet()),
        ],
      ),
    );
  }
}

class DeliveryTrackingSheet extends StatelessWidget {
  const DeliveryTrackingSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return DraggableScrollableSheet(
      initialChildSize: 0.4,
      builder: (BuildContext context, ScrollController scrollController) {
        return Container(
          decoration: const BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(20),
              topRight: Radius.circular(20),
            ),
          ),
          child: SingleChildScrollView(
            controller: scrollController,
            child: const Padding(
              padding: EdgeInsets.all(20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ListTile(
                    leading: CircleAvatar(
                      backgroundImage:
                          NetworkImage('https://via.placeholder.com/150'),
                    ),
                    title: Text('Uttora Coffee House'),
                    subtitle: Text('Ordered At: 06 Sept, 10:00pm'),
                  ),
                  SizedBox(height: 10),
                  Text('2x Burger\n4x Sandwich'),
                  SizedBox(height: 20),
                  Divider(thickness: 1),
                  SizedBox(height: 20),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        '20 min',
                        style: TextStyle(
                          fontSize: 28,
                          fontWeight: FontWeight.bold,
                          color: Colors.black87,
                        ),
                      ),
                      Text(
                        'ESTIMATED DELIVERY TIME',
                        style: TextStyle(
                          fontSize: 14,
                          color: Colors.grey,
                        ),
                      ),
                      SizedBox(height: 20),
                      OrderStep(
                        text: 'Your order has been received',
                        icon: Icons.check_circle,
                        iconColor: Colors.orange,
                        isCompleted: true,
                      ),
                      OrderStep(
                        text: 'The restaurant is preparing your food',
                        icon: Icons.radio_button_unchecked,
                        iconColor: Colors.orangeAccent,
                        isCompleted: false,
                      ),
                      OrderStep(
                        text: 'Your order has been picked up for delivery',
                        icon: Icons.radio_button_unchecked,
                        iconColor: Colors.grey,
                        isCompleted: false,
                      ),
                      OrderStep(
                        text: 'Order arriving soon!',
                        icon: Icons.radio_button_unchecked,
                        iconColor: Colors.grey,
                        isCompleted: false,
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      KabtinContact(),
                    ],
                  )
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}

class KabtinContact extends StatelessWidget {
  const KabtinContact({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      contentPadding: EdgeInsets.zero,
      leading: const CircleAvatar(
        radius: 30,
        backgroundImage: NetworkImage(
          'https://via.placeholder.com/150', // Replace with actual image
        ),
      ),
      title: Text(
        'Bashar',
        style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
      ),
      subtitle: Text('Courier'),
      trailing: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          IconButton(
            icon: Icon(Icons.phone, color: orangeColor),
            onPressed: () {},
            color: Colors.orange,
            iconSize: 30,
            padding: EdgeInsets.all(12),
            constraints: BoxConstraints(),
          ),
          SizedBox(width: 10),
          IconButton(
            icon: Icon(
              Icons.messenger,
              color: orangeColor,
            ),
            onPressed: () {},
            color: Colors.orangeAccent,
            iconSize: 30,
            padding: EdgeInsets.all(12),
            constraints: BoxConstraints(),
          ),
        ],
      ),
    );
  }
}

// Custom Widget for each order step
class OrderStep extends StatelessWidget {
  final String text;
  final IconData icon;
  final Color iconColor;
  final bool isCompleted;

  const OrderStep({
    Key? key,
    required this.text,
    required this.icon,
    required this.iconColor,
    required this.isCompleted,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(icon, color: iconColor, size: 24),
        SizedBox(width: 10),
        Text(
          text,
          style: TextStyle(
            fontSize: 16,
            color: isCompleted ? Colors.black : Colors.grey,
            fontWeight: isCompleted ? FontWeight.bold : FontWeight.normal,
          ),
        ),
      ],
    );
  }
}
