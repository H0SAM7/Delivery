import 'package:delivery/core/utils/assets.dart';
import 'package:delivery/features/payment/presentation/views/widgets/payment_method_item.dart';
import 'package:flutter/material.dart';

class PaymentMethodsListView extends StatefulWidget {
  const PaymentMethodsListView({super.key, this.onTap});
  final void Function()? onTap;
  @override
  State<PaymentMethodsListView> createState() => _PaymentMethodsListViewState();
}

class _PaymentMethodsListViewState extends State<PaymentMethodsListView> {
  final List<String> paymentMethodsItems = const [
    Assets.imagesCash,
    Assets.imagesVisa,
    Assets.imagesMasterCard,
    Assets.imagesPaypalIcon,
  ];
  final List<String> paymentMethodsNames = const [
    'Cash',
    'Visa',
    'Mastercard',
    'PayPal'
  ];

  int activeIndex = 0;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 62,
      child: ListView.builder(
          itemCount: paymentMethodsItems.length,
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8),
              child: GestureDetector(
                onTap: () {
                  activeIndex = index;
                  setState(() {});
                },
                child: PaymentMethodItem(
                  index: index,
                  isActive: activeIndex == index,
                  image: paymentMethodsItems[index],
                  title: paymentMethodsNames[index],
                  onTap: widget.onTap,
                ),
              ),
            );
          }),
    );
  }
}
