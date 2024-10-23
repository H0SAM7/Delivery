import 'package:delivery/core/routes/app_routes.dart';
import 'package:delivery/features/cart/manager/cart_cubit/cart_cubit.dart';
import 'package:delivery/features/home/data/models/menu_model/menu_model.dart';
import 'package:delivery/features/home/presentation/manager/menu_cubit/menu_cubit.dart';
import 'package:delivery/features/payment/presentation/manager/payment_cubit/payment_cubit.dart';
import 'package:delivery/keys/api_keys.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_stripe/flutter_stripe.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hive_flutter/hive_flutter.dart';

void main() async {
  await Hive.initFlutter();
  Hive.registerAdapter(MenuModelAdapter());
  await Hive.openBox<MenuModel>('cartBox');

  Stripe.publishableKey = ApiKeys.stripePublishableKey;

  runApp(const DeliveryApp());
}

class DeliveryApp extends StatelessWidget {
  const DeliveryApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => MenuCubit(),
        ),
        BlocProvider(
          create: (context) => CartCubit(),
          
        ),
               BlocProvider(
               create: (context) => PaymentCubit(),
          
        ),
      ],
      child: MaterialApp(
        theme: ThemeData(
          scaffoldBackgroundColor: Colors.white,
          fontFamily: GoogleFonts.merriweather().fontFamily,
        ),
        debugShowCheckedModeBanner: false,
        routes: AppRoutes.routes,
        initialRoute: AppRoutes.initialRoute,
      ),
    );
  }
}
