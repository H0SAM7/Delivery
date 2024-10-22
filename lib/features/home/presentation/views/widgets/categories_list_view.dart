import 'package:delivery/core/utils/assets.dart';
import 'package:delivery/features/home/data/models/category_model.dart';
import 'package:delivery/features/home/presentation/views/widgets/category_item.dart';
import 'package:flutter/material.dart';

class CategoriesListView extends StatefulWidget {
  const CategoriesListView({super.key});

  @override
  State<CategoriesListView> createState() => _CategoriesListViewState();
}

class _CategoriesListViewState extends State<CategoriesListView> {
  List<CategoryModel> categories = [
    CategoryModel(
      name: 'All',
      image: Assets.imagesFire,
    ),
    CategoryModel(
      name: 'Burger',
      image: Assets.imagesBurger,
    ),
    CategoryModel(
      name: 'Pizza',
      image: Assets.imagesPizza,
    ),
    CategoryModel(
      name: 'Juices',
      image: Assets.imagesJuices,
    ),
  ];
  int selectedIndex = 0;
  // Tracks the selected category index
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      
      child: SizedBox(
        height: 60,
        child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: categories.length,
            itemBuilder: (context, index) {
              bool isSelected =
                  selectedIndex == index; // Check if the category is selected
              return GestureDetector(
                  onTap: () {
                    setState(() {
                      selectedIndex = index; // Update selected index on tap
                    });
                  },
                  child: CategroyItem(
                      categoryModel: categories[index], isSelected: isSelected));
            }),
      ),
    );
  }
}
