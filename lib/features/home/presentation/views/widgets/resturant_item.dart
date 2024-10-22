import 'package:delivery/features/home/data/models/restaurant_model.dart';
import 'package:delivery/features/home/presentation/manager/menu_cubit/menu_cubit.dart';
import 'package:delivery/features/home/presentation/views/menu_items_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ResturantItem extends StatelessWidget {
  const ResturantItem({
    super.key,
    required this.restaurantModel,
  });
  final RestaurantModel restaurantModel;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () async {
        await BlocProvider.of<MenuCubit>(context)
            .getMenu(quary: restaurantModel.quary);

        Navigator.pushNamed(context, MenuItemsView.id,arguments: restaurantModel);
      },
      child: Card(
        elevation: 4,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 150,
              width: double.infinity,
              decoration: const BoxDecoration(
                color: Colors.grey,
                borderRadius: BorderRadius.vertical(top: Radius.circular(10)),
              ),
              child: Image.asset(
                restaurantModel.image,
                fit: BoxFit.fill,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    restaurantModel.name,
                    // 'Rose Garden Restaurant',
                    style: const TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 4),
                  Text(
                    restaurantModel.menu,
                    // 'Burger - Chiken - Riche - Wings',
                    style: TextStyle(
                      color: Colors.grey[600],
                    ),
                  ),
                  const SizedBox(height: 8),
                  Row(
                    children: [
                      const Icon(Icons.star, color: Colors.orange, size: 20),
                      const SizedBox(width: 4),
                      Text(restaurantModel.rate),
                      const SizedBox(width: 16),
                      const Icon(Icons.delivery_dining,
                          color: Colors.orange, size: 20),
                      const SizedBox(width: 4),
                      const Text('Free'),
                      const SizedBox(width: 16),
                      const Icon(Icons.access_time,
                          color: Colors.orange, size: 20),
                      const SizedBox(width: 4),
                      Text(restaurantModel.time),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
