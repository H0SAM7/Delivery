import 'package:delivery/features/home/views/widgets/brand_item.dart';
import 'package:delivery/features/home/views/widgets/categories_list_view.dart';
import 'package:delivery/features/home/views/widgets/home_header.dart';
import 'package:flutter/material.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});
  static String id = 'HomeView';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(
            height: 20,
          ),
          const HomeHeader(),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 8.0),
            child: Text('Hey Hosam, Good Afternoon!'),
          ),
          const Padding(
            padding: EdgeInsets.all(8.0),
            child: SearchBar(
              enabled: false,
              leading: Icon(Icons.search),
              hintText: 'Search...',
            ),
          ),
          const Padding(
            padding: EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('All Categories',
                    style:
                        TextStyle(fontWeight: FontWeight.bold, fontSize: 18)),
                Text('See All', style: TextStyle(color: Colors.grey)),
              ],
            ),
          ),
          CategoriesListView(),
          Expanded(child: BrandListView())
        ],
      ),
    );
  }
}

class BrandListView extends StatelessWidget {
  const BrandListView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: 10,
        itemBuilder: (context, index) {
          return BrandItem();
        });
  }
}
