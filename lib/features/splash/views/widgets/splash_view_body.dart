import 'package:delivery/core/utils/assets.dart';
import 'package:delivery/features/splash/views/onboarding_view.dart';
import 'package:delivery/features/splash/views/widgets/title_splash.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class SplashViewBody extends StatefulWidget {
  const SplashViewBody({super.key});

  @override
  State<SplashViewBody> createState() => _SplashViewBodyState();
}

class _SplashViewBodyState extends State<SplashViewBody>
    with SingleTickerProviderStateMixin {
  late AnimationController animationController;
  late Animation<Offset> slidingAnimation;
  @override
  void initState() {
    super.initState();
    initSlidingAnimmation();
    navigateToHome();
  }

  @override
  void dispose() {
    super.dispose();
    animationController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
       Image.asset(Assets.imagesLogo),
   AnimatedTitleSplash(slidingAnimation: slidingAnimation),
      ],
    );
  }

  void initSlidingAnimmation() {
    animationController =
        AnimationController(vsync: this, duration: const Duration(seconds: 1));
    slidingAnimation =
        Tween<Offset>(begin: const Offset(0, 2), end: const Offset(0, 0))
            .animate(animationController);
    animationController.forward();
  }

  void navigateToHome() {
    Future.delayed(
      const Duration(seconds: 2),
      () {
        //     Get.to(() => const HomeView()  ,
        //     calculations                   ,
        //     transition: Transition.fade    ,
        //     duration  : kTranstionDuration),
        // GoRouter.of(context).push(AppRoutes.kHomeView);
        Navigator.pushReplacementNamed(context, OnboardingView.id);
      },
    );
  }
}