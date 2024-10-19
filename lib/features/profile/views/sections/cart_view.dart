import 'package:delivery/core/widgets/custom_app_bar.dart';
import 'package:delivery/core/widgets/payment_bottom_sheet_view.dart';
import 'package:delivery/features/auth/views/widgets/custom_send_button.dart';
import 'package:delivery/features/profile/views/widgets/cart_list_view.dart';
import 'package:flutter/material.dart';

class CartView extends StatelessWidget {
  const CartView({super.key});
  static String id = 'CartView';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const CustomAppBar(
            title: 'Cart',
          ),
          const Expanded(child: CartItemListView()),
          CustomSendButton(
            label: 'Place Order',
            onTap: () {
              showModalBottomSheet(
                  context: context,
                  isScrollControlled: true,
                  builder: (context) {
                    return const Padding(
                      padding: EdgeInsets.only(left: 8.0),
                      child: PaymentBottomSheetView(),
                    );
                  });
            },
          ),
          const SizedBox(
            height: 30,
          ),
        ],
      ),
    );
  }
}
