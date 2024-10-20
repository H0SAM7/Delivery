import 'package:delivery/features/payment/presentation/views/widgets/payment_method_list_view.dart';
import 'package:flutter/material.dart';

class Tesssst extends StatelessWidget {
  const Tesssst({super.key});
  static String id = 'Tesssst';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [PaymentMethodsListView()],
      ),
    );
  }
}
