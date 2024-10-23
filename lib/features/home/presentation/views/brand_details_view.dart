import 'package:delivery/features/home/presentation/views/widgets/brand_header.dart';
import 'package:delivery/features/home/presentation/views/widgets/product_list_view.dart';
import 'package:flutter/material.dart';

class BrandDetailsView extends StatelessWidget {
  const BrandDetailsView({super.key});
  static String id = 'BrandDetailsView';
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 30),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            BrandHeader(),
            SizedBox(
              height: 10,
            ),
            Text(
              'Popular Burgers',
              style: TextStyle(fontSize: 20),
            ),
            Expanded(child: ProductListView())
          ],
        ),
      ),
    );
  }
}
