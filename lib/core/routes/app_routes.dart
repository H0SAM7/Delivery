import 'package:delivery/bottom_navigator_bar.dart';
import 'package:delivery/features/auth/views/login_view.dart';
import 'package:delivery/features/auth/views/register_view.dart';
import 'package:delivery/features/home/presentation/views/brand_details_view.dart';
import 'package:delivery/features/home/presentation/views/home_view.dart';
import 'package:delivery/features/home/presentation/views/menu_items_view.dart';
import 'package:delivery/features/home/presentation/views/product_details_view.dart';
import 'package:delivery/features/orders/views/orders_view.dart';
import 'package:delivery/features/orders/views/track_order_view.dart';
import 'package:delivery/features/payment/presentation/views/add_new_card_view.dart';
import 'package:delivery/features/payment/presentation/views/chose_payment_view.dart';
import 'package:delivery/features/payment/presentation/views/payment_done_view.dart';
import 'package:delivery/features/payment/presentation/views/pyment_view.dart';
import 'package:delivery/features/profile/views/profile_view.dart';
import 'package:delivery/features/profile/views/sections/add_new_address_view.dart';
import 'package:delivery/features/profile/views/sections/address_view.dart';
import 'package:delivery/features/cart/views/cart_view.dart';
import 'package:delivery/features/profile/views/sections/edit_profile_view.dart';
import 'package:delivery/features/profile/views/sections/faqs_view.dart';
import 'package:delivery/features/profile/views/sections/favo_view.dart';
import 'package:delivery/features/profile/views/sections/notifi_view.dart';
import 'package:delivery/features/profile/views/sections/personal_info_view.dart';
import 'package:delivery/features/splash/views/onboarding_view.dart';
import 'package:delivery/features/splash/views/splash_view.dart';
import 'package:delivery/features/temp/stripe_payment_test.dart';
import 'package:delivery/features/temp/tesssst.dart';
import 'package:flutter/material.dart';

abstract class AppRoutes {
  //     BottomNavigator
  static String? initialRoute = BottomNavigator.id;
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
    FavoView.id: (context) => const FavoView(),
    NotifiView.id: (context) => const NotifiView(),
    FaqsView.id: (context) => const FaqsView(),
    TrackOrderView.id: (context) => const TrackOrderView(),
    OrdersView.id: (context) => const OrdersView(),
    PymentView.id: (context) => const PymentView(),
    AddNewCard.id: (context) => const AddNewCard(),
    PaymentDoneView.id: (context) => const PaymentDoneView(),
    StripeTest.id: (context) => const StripeTest(),
    testView.id: (context) =>  testView(),
        MenuItemsView.id: (context) => const MenuItemsView(),
                ChosePaymentView.id: (context) => const ChosePaymentView(),


  };
}
