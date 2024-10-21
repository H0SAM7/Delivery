import 'package:delivery/features/home/presentation/views/widgets/category_item.dart';
import 'package:flutter/material.dart';

class CategoriesListView extends StatefulWidget {
  const CategoriesListView({super.key});

  @override
  State<CategoriesListView> createState() => _CategoriesListViewState();
}

class _CategoriesListViewState extends State<CategoriesListView> {
  final List<String> categories = ["All", "Foods", "Clothes", "Other"];
  // Add more categories here
  int selectedIndex = 0;
  // Tracks the selected category index
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 60,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: categories.length,
          itemBuilder: (context, index) {
            bool isSelected =
                selectedIndex == index; // Check if the category is selected
            return Padding(
              padding: const EdgeInsets.all(8.0),
              child: GestureDetector(
                  onTap: () {
                    setState(() {
                      selectedIndex = index; // Update selected index on tap
                    });
                  },
                  child: CategroyItem(
                      category: categories[index], isSelected: isSelected)),
            );
          }),
    );
  }
}
