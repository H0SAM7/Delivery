import 'package:cached_network_image/cached_network_image.dart';
import 'package:delivery/core/styles/app_styles.dart';
import 'package:delivery/core/utils/assets.dart';
import 'package:delivery/features/home/presentation/views/widgets/menu_items_list_view.dart';
import 'package:flutter/material.dart';

class MenuItemsView extends StatelessWidget {
  const MenuItemsView({super.key});
  static String id = 'MenuItemsView';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Row(
              children: [
                GestureDetector(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: Image.asset(Assets.iconsBack),
                ),
                const SizedBox(
                  width: 15,
                ),
                Text(
                  'Menu',
                  style: AppStyles.style24(context),
                ),
              ],
            ),
            Expanded(child: MenuItemsListView()),
          ],
        ),
      ),
    );
  }
  
}

class CustomImage extends StatelessWidget {
  const CustomImage({
    super.key,
    required this.image,
  });
  final String image;
  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(16),
      child: AspectRatio(
        aspectRatio: 2,
        child: CachedNetworkImage(
          imageUrl: image,
          fit: BoxFit.fill,
          errorWidget: (context, url, error) => const Icon(Icons.error),
        ),
      ),
    );
  }
}
