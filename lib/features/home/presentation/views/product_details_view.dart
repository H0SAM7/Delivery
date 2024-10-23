import 'dart:developer';

import 'package:cached_network_image/cached_network_image.dart';
import 'package:delivery/bottom_navigator_bar.dart';
import 'package:delivery/core/styles/app_styles.dart';
import 'package:delivery/core/widgets/custom_alert.dart';
import 'package:delivery/core/widgets/custom_app_bar.dart';
import 'package:delivery/features/auth/views/widgets/custom_send_button.dart';
import 'package:delivery/features/cart/manager/cart_cubit/cart_cubit.dart';
import 'package:delivery/features/home/data/models/menu_model/menu_model.dart';
import 'package:delivery/features/home/data/models/restaurant_model.dart';
import 'package:delivery/features/home/presentation/views/widgets/quantity_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:rflutter_alert/rflutter_alert.dart';

class ProductDetailsView extends StatelessWidget {
  const ProductDetailsView({super.key});
  static String id = 'ProductDetailsView';

  @override
  Widget build(BuildContext context) {
    final args =
        ModalRoute.of(context)?.settings.arguments as Map<String, dynamic>;

    final menuModel = args['menuModel'] as MenuModel;
    final resturantModel = args['resturantModel'] as RestaurantModel;

    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 30),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Row(

            const CustomAppBar(title: 'Detailes'),
            const SizedBox(
              height: 8,
            ),
            Center(child: CachedNetworkImage(imageUrl: menuModel.image!)),
            const SizedBox(
              height: 32,
            ),
            Text(
              menuModel.title!,
              style: AppStyles.style24(context),
            ),
            const SizedBox(
              height: 8,
            ),
            Text(
              menuModel.restaurantChain!,
              style: AppStyles.style18(context)
                  .copyWith(color: const Color(0xffA0A5BA)),
            ),
            const SizedBox(
              height: 24,
            ),
            Row(
              children: [
                const Icon(Icons.star, color: Colors.orange, size: 20),
                const SizedBox(width: 4),
                Text(resturantModel.rate),
                const SizedBox(width: 16),
                const Icon(Icons.delivery_dining,
                    color: Colors.orange, size: 20),
                const SizedBox(width: 4),
                const Text('Free'),
                const SizedBox(width: 16),
                const Icon(Icons.access_time, color: Colors.orange, size: 20),
                const SizedBox(width: 4),
                Text(resturantModel.time),
              ],
            ),
            const SizedBox(
              height: 32,
            ),
            const QuantityWidget(),

            const SizedBox(
              height: 32,
            ),
            Center(
                child: CustomSendButton(
              label: 'Add to cart',
              onTap: () async {
                await BlocProvider.of<CartCubit>(context).addItem(menuModel);
                log('adding item to cart done');
                showCustomAlert(
                  context: context,
                  type: AlertType.success,
                  title: 'Adding To Your Cart',
                  description: 'Go to cart for place order Now.',
                  onPressed: () {
                    Navigator.pushReplacementNamed(context, BottomNavigator.id);
                  },
                  actionTitle: 'Ok',
                );
              },
            ))
          ],
        ),
      ),
    );
  }
}
