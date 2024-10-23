import 'package:delivery/core/styles/app_styles.dart';
import 'package:delivery/features/home/presentation/views/widgets/categories_list_view.dart';
import 'package:delivery/features/home/presentation/views/widgets/custom_drawer.dart';
import 'package:delivery/features/home/presentation/views/widgets/home_header.dart';
import 'package:delivery/features/home/presentation/views/widgets/resutrant_list_view.dart';
import 'package:flutter/material.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});
  static String id = 'HomeView';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const DrawerView(),
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
          const CategoriesListView(),
          const Divider(
            indent: 40,
            thickness: .5,
            endIndent: 40,
          ),
          Text(
            'Open Restaurants',
            style: AppStyles.style24(context),
          ),
          const Expanded(child: ResturentsListView())
        ],
      ),
    );
  }
}
