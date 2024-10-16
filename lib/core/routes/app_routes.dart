import 'package:delivery/features/auth/views/login_view.dart';
import 'package:delivery/features/auth/views/register_view.dart';
import 'package:delivery/features/splash/views/onboarding_view.dart';
import 'package:delivery/features/splash/views/splash_view.dart';
import 'package:flutter/material.dart';

abstract class AppRoutes {
  static String? initialRoute = SplashView.id;
  static Map<String, Widget Function(BuildContext)> routes = {
    SplashView.id: (context) => const SplashView(),
    OnboardingView.id: (context) => const OnboardingView(),
    LoginView.id: (context) => const LoginView(),
    RegisterView.id: (context) => const RegisterView(),
  };
}
