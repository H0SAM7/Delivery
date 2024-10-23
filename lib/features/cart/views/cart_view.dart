import 'package:delivery/core/widgets/custom_app_bar.dart';
import 'package:delivery/core/widgets/payment_bottom_sheet_view.dart';
import 'package:delivery/features/auth/views/widgets/custom_send_button.dart';
import 'package:delivery/features/cart/manager/cart_cubit/cart_cubit.dart';
import 'package:delivery/features/cart/views/widgets/cart_list_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

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
            widget: ClearItemsCart(),
          ),
          const Expanded(child: CartItemListView()),
          CustomSendButton(
            label: 'Place Order',
            onTap: () async {
              await BlocProvider.of<CartCubit>(context).items.isNotEmpty
                  ? showModalBottomSheet(
                      context: context,
                      isScrollControlled: true,
                      builder: (context) {
                        return const Padding(
                          padding: EdgeInsets.only(left: 8.0),
                          child: PaymentBottomSheetView(),
                        );
                      })
                  : const SizedBox();
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

class ClearItemsCart extends StatefulWidget {
  const ClearItemsCart({
    super.key,
  });

  @override
  State<ClearItemsCart> createState() => _ClearItemsCartState();
}

class _ClearItemsCartState extends State<ClearItemsCart> {
  @override
  Widget build(BuildContext context) {
    return IconButton(
        onPressed: () async {
          await BlocProvider.of<CartCubit>(context).clearCart();
          setState(() {});
        },
        icon: const Icon(Icons.clear_all_sharp));
  }
}
