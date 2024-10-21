import 'package:delivery/core/utils/assets.dart';
import 'package:delivery/features/home/presentation/views/widgets/product_details_item.dart';
import 'package:flutter/material.dart';

class ProductListView extends StatelessWidget {
  const ProductListView({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 10,
          childAspectRatio: 5 / 7,
        ),
        itemCount: 4,
        itemBuilder: (context, ind) {
          return ProductDetails(
            title: 'Burger Bistro',
            price: '\$40',
            image: Assets.imagesBk,
            restaurant: 'Rose Garden',
          );
        });
  }
}
