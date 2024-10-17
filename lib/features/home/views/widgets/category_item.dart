
import 'package:flutter/material.dart';

import '../brand_details_view.dart';

class CategroyItem extends StatelessWidget {
  const CategroyItem(
      {super.key, required this.category, required this.isSelected});
  final String category;
  final bool isSelected;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        Navigator.pushNamed(context, BrandDetailsView.id);
      },
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 10.0),
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
        child: Row(
          children: [
            const CircleAvatar(
              backgroundColor: Colors.blueGrey, // Avatar color
              radius: 12.0, // Circle size
            ),
            const SizedBox(width: 8.0),
            Text(
              category,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: isSelected
                    ? Colors.black
                    : Colors
                        .grey[700], // Text color changes for selected category
              ),
            ),
          ],
        ),
      ),
    );
  }
}
