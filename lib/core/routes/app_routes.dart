import 'package:delivery/bottom_navigator_bar.dart';
import 'package:delivery/features/auth/views/login_view.dart';
import 'package:delivery/features/auth/views/register_view.dart';
import 'package:delivery/features/home/views/brand_details_view.dart';
import 'package:delivery/features/home/views/home_view.dart';
import 'package:delivery/features/home/views/product_details_view.dart';
import 'package:delivery/features/profile/views/profile_view.dart';
import 'package:delivery/features/profile/views/sections/add_new_address_view.dart';
import 'package:delivery/features/profile/views/sections/address_view.dart';
import 'package:delivery/features/profile/views/sections/cart_view.dart';
import 'package:delivery/features/profile/views/sections/edit_profile_view.dart';
import 'package:delivery/features/profile/views/sections/personal_info_view.dart';
import 'package:delivery/features/splash/views/onboarding_view.dart';
import 'package:delivery/features/splash/views/splash_view.dart';
import 'package:flutter/material.dart';

abstract class AppRoutes {
  //     BottomNavigator
  static String? initialRoute = AddressView.id;
  static Map<String, Widget Function(BuildContext)> routes = {
    SplashView.id: (context) => const SplashView(),
    OnboardingView.id: (context) => const OnboardingView(),
    LoginView.id: (context) => const LoginView(),
    RegisterView.id: (context) => const RegisterView(),
    HomeView.id: (context) => const HomeView(),
    BottomNavigator.id: (context) => const BottomNavigator(),
    BrandDetailsView.id: (context) => const BrandDetailsView(),
    ProductDetailsView.id: (context) => const ProductDetailsView(),
    ProfileView.id: (context) => const ProfileView(),
    PersonalInfoView.id: (context) => const PersonalInfoView(),
    EditProfileView.id: (context) => const EditProfileView(),
    AddressView.id: (context) => const AddressView(),
    AddNewAddressView.id: (context) => const AddNewAddressView(),
    CartView.id: (context) => const CartView(),
  };
}
