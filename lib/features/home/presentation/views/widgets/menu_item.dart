import 'package:delivery/core/styles/app_styles.dart';
import 'package:delivery/features/home/data/models/menu_model/menu_model.dart';
import 'package:delivery/features/home/data/models/restaurant_model.dart';
import 'package:delivery/features/home/presentation/views/product_details_view.dart';
import 'package:delivery/features/home/presentation/views/widgets/custom_cashed_image.dart';
import 'package:flutter/material.dart';

class MenuItem extends StatelessWidget {
  const MenuItem(
      {super.key, required this.menuModel, required this.restaurantModel});
  final MenuModel menuModel;
  final RestaurantModel restaurantModel;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        
        Navigator.pushNamed(context, ProductDetailsView.id, arguments: {
          'menuModel': menuModel,
          'resturantModel': restaurantModel
        });
      },
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(25),
        ),
        elevation: 3,
        child: ClipRRect(
          borderRadius: BorderRadius.circular(25),
          child: Container(
            decoration: BoxDecoration(color: Colors.white),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  child: CustomImage(
                    image: menuModel.image!,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      FittedBox(
                        fit: BoxFit.scaleDown,
                        child: Text(
                          _truncateText(menuModel.title!, 2),
                          style: AppStyles.styleMedium18(context),
                          maxLines: 1,
                        ),
                      ),
                      FittedBox(
                        fit: BoxFit.scaleDown,
                        child: Text(" \$ 88",
                            style: AppStyles.styleMedium18(context)),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  String _truncateText(String text, int maxWords) {
    final words = text.split(' ');
    if (words.length <= maxWords) {
      return text;
    } else {
      return '${words.take(maxWords).join(' ')}...';
    }
  }
}
