import 'package:delivery/core/styles/app_styles.dart';
import 'package:delivery/features/home/data/models/category_model.dart';
import 'package:flutter/material.dart';

class CategroyItem extends StatelessWidget {
  const CategroyItem(
      {super.key, required this.isSelected, required this.categoryModel});
  final bool isSelected;
  final CategoryModel categoryModel;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        //  Navigator.pushNamed(context, BrandDetailsView.id);
      },
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 10.0),
        child: Container(
          decoration: BoxDecoration(
            color: isSelected ? Colors.orange[200] : Colors.grey[200],
            borderRadius: BorderRadius.circular(30.0),
            boxShadow: [
              if (isSelected)
                BoxShadow(
                  color: Colors.orange.withOpacity(0.3),
                  blurRadius: 8,
                )
            ],
          ),
          child: Padding(
            padding: const EdgeInsets.only(right: 10.0),
            child: FittedBox(
              fit: BoxFit.scaleDown,
              child: Row(
                // mainAxisAlignment: MainAxisAlignment.start,
                // crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Align(
                    alignment: Alignment.centerLeft,
                    child: CircleAvatar(
                      backgroundColor: Colors.white,
                      radius: 50,
                      child: CircleAvatar(
                        backgroundColor: Colors.white,
                        radius: 48,
                        child: Image.asset(
                          categoryModel.image,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(width: 32.0),
                  Text(categoryModel.name,
                      style: AppStyles.style18(context).copyWith(
                        fontWeight: FontWeight.bold,
                        fontSize: 30,
                        color: isSelected
                            ? Colors.black
                            : Colors.grey[
                                700], // Text color changes for selected category
                      )),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
