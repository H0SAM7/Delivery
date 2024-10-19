import 'package:flutter/material.dart';

class AnimatedTitleSplash extends StatelessWidget {
  const AnimatedTitleSplash({
    super.key,
    required this.slidingAnimation,
  });

  final Animation<Offset> slidingAnimation;

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
        animation: slidingAnimation,
        builder: (context, _) {
          return SlideTransition(
            position: slidingAnimation,
            child: const Text(
              'Welcom',
              textAlign: TextAlign.center,
            ),
          );
        });
  }
}
