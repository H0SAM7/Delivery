import 'package:delivery/features/home/presentation/views/widgets/resturant_item.dart';
import 'package:flutter/material.dart';

class ResturentsListView extends StatelessWidget {
  const ResturentsListView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: 10,
        itemBuilder: (context, index) {
          return ResturantItem();
        });
  }
}
