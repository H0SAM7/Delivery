import 'package:flutter/material.dart';

class BrandItem extends StatelessWidget {
  const BrandItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
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
            decoration: BoxDecoration(
              color: Colors.grey,
              borderRadius: BorderRadius.vertical(top: Radius.circular(10)),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Rose Garden Restaurant',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 4),
                Text(
                  'Burger - Chiken - Riche - Wings',
                  style: TextStyle(
                    color: Colors.grey[600],
                  ),
                ),
                SizedBox(height: 8),
                Row(
                  children: [
                    Icon(Icons.star, color: Colors.orange, size: 20),
                    SizedBox(width: 4),
                    Text('4.7'),
                    SizedBox(width: 16),
                    Icon(Icons.delivery_dining, color: Colors.orange, size: 20),
                    SizedBox(width: 4),
                    Text('Free'),
                    SizedBox(width: 16),
                    Icon(Icons.access_time, color: Colors.orange, size: 20),
                    SizedBox(width: 4),
                    Text('20 min'),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
