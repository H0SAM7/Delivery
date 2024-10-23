import 'package:cached_network_image/cached_network_image.dart';
import 'package:delivery/core/styles/app_styles.dart';
import 'package:delivery/core/utils/assets.dart';
import 'package:delivery/features/home/data/models/menu_model/menu_model.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomCartItem extends StatefulWidget {
  const CustomCartItem({
    super.key, required this.menuModel,
  });
final MenuModel menuModel;
  @override
  State<CustomCartItem> createState() => _CustomCartItemState();
}

class _CustomCartItemState extends State<CustomCartItem> {
  int quantity = 1;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        children: [
           Expanded(
            child: CustomCartImage(image: widget.menuModel.image!,),
          ),
          Expanded(
            child: CustomCartDetails(quantity: quantity,title: widget.menuModel.title!,),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  IconButton(
                    onPressed: () {
                      setState(() {
                      
                       widget.menuModel.delete();
                      });
                    },
                    icon: Image.asset(Assets.iconsRemoveIcon),
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      const SizedBox(
                        width: 8,
                      ),
                      CircleAvatar(
                        radius: 15,
                        backgroundColor: const Color.fromARGB(39, 5, 5, 24),
                        child: IconButton(
                          onPressed: () async{
                            setState(() {
                              if (quantity > 1) {
                                quantity--;
                              }
                            });
                          },
                          icon: const Icon(
                            Icons.remove,
                            size: 15,
                          ),
                        ),
                      ),
                      const SizedBox(
                        width: 8,
                      ),
                      Text(
                        quantity.toString(),
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            fontFamily: GoogleFonts.inter().fontFamily),
                      ),
                      const SizedBox(
                        width: 8,
                      ),
                      CircleAvatar(
                        backgroundColor: const Color.fromARGB(39, 5, 5, 24),
                        radius: 15,
                        child: IconButton(
                          onPressed: () {
                            setState(() {
                              quantity++;
                            });
                          },
                          icon: const Icon(
                            Icons.add,
                            size: 15,
                          ),
                        ),
                      ),
                      const SizedBox(
                        width: 8,
                      ),
                    ],
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}

class CustomCartDetails extends StatelessWidget {
  const CustomCartDetails({
    super.key,
    required this.quantity, required this.title,
  });

  final int quantity;
final String title;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: AppStyles.style18(context),
          ),
          const SizedBox(
            height: 20,
          ),
          Text(
            '\$${60 * quantity}',
            style: AppStyles.style18(context).copyWith(
                fontWeight: FontWeight.bold,
                fontFamily: GoogleFonts.inter().fontFamily),
          ),
        ],
      ),
    );
  }
}

class CustomCartImage extends StatelessWidget {
  const CustomCartImage({
    super.key, required this.image,
  });
final String image;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: CachedNetworkImage(imageUrl: image)
      // Container(
      //   decoration: BoxDecoration(
      //     borderRadius: BorderRadius.circular(16),
      //   ),
      //   child: Image.asset(Assets.imagesPizza),
      // ),
    );
  }
}
