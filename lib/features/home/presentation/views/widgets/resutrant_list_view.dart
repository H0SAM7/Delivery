import 'package:delivery/core/utils/assets.dart';
import 'package:delivery/features/home/data/models/restaurant_model.dart';
import 'package:delivery/features/home/presentation/views/widgets/resturant_item.dart';
import 'package:flutter/material.dart';

class ResturentsListView extends StatelessWidget {
  const ResturentsListView({super.key});
  static List<RestaurantModel> restaurants = [
   
    RestaurantModel(
      name: "Mandoz Food Station",
      menu: 'Chiken - Beaf - Pizza - Shaworma - pasta',
      image: Assets.imagesMandoz,
      time: '25',
      rate: '4.9',
        quary: 'pizza',
    ),
    RestaurantModel(
      name: "Zack's Fired Cheken",
      menu: 'Burger - Wing - pasta',
      image: Assets.imagesZacks,
      time: '20',
      rate: '4.8',
        quary: 'Burger',
    ),
    RestaurantModel(
      name: "Bazoka Fired Cheken",
      menu: 'Burger -Fried Cheken - Wing - pasta',
      image: Assets.imagesBazoka,
      time: '15',
      rate: '4.8',
        quary: 'Burger',
    ),
     RestaurantModel(
      name: "The Mixer",
      menu: 'Juices - fruits',
      image: Assets.imagesMixer,
      time: '10',
      rate: '4.9',
      quary: 'juices',
    ),
    RestaurantModel(
      name: "B-LABAN",
      menu: 'Ice cream - sweets',
      image: Assets.imagesBlbn,
      time: '10',
      rate: '4.9',
        quary: 'Ice cream',
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: restaurants.length,
        itemBuilder: (context, index) {
          return ResturantItem(
            restaurantModel: restaurants[index],
         
          );
        });
  }
}
