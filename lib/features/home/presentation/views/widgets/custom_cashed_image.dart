
import 'package:cached_network_image/cached_network_image.dart';
import 'package:delivery/core/widgets/custom_loading_indecator.dart';
import 'package:flutter/material.dart';

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
             placeholder: (context, url) => const CustomLoadingIndicator(),
          errorWidget: (context, url, error) => const Icon(Icons.error),
        ),
      ),
    );
  }
}
