import 'package:delivery/core/routes/app_routes.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const DeliveryApp());
}
class DeliveryApp extends StatelessWidget {
  const DeliveryApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
     routes: AppRoutes.routes,
     initialRoute: AppRoutes.initialRoute,
    );
  }
}