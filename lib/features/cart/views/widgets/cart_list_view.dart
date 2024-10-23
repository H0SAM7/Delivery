import 'package:delivery/features/cart/manager/cart_cubit/cart_cubit.dart';
import 'package:delivery/features/profile/views/widgets/custom_cart_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CartItemListView extends StatelessWidget {
  const CartItemListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CartCubit, CartState>(
      builder: (context, state) {
        if (state is CartSuccess && BlocProvider.of<CartCubit>(context).items.isNotEmpty ) {
          return ListView.builder(
              itemCount: BlocProvider.of<CartCubit>(context).items.length,
              itemBuilder: (context, index) {
                return CustomCartItem(
                  menuModel: BlocProvider.of<CartCubit>(context).items[index],
                );
              });
        }
         else {
          return const Center(child: Text('No items in cart'));
        }
      },
    );
  }
}
