import 'package:delivery/features/payment/presentation/views/payment_done_view.dart';
import 'package:flutter/material.dart';

class PaymentMethodItem extends StatelessWidget {
  const PaymentMethodItem({
    super.key,
    required this.isActive,
    required this.image,
    required this.index,
    this.onTap, required this.title,
  });

  final bool isActive;
  final String image;
    final String title;

  final int index;
  final void Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        GestureDetector(
          onTap: index == 0
              ? () {
                  Navigator.pushNamed(context, PaymentDoneView.id);
                }
              : onTap,
          child: AnimatedContainer(
            duration: const Duration(milliseconds: 300),
            width: 103,
            height: 62,
            decoration: ShapeDecoration(
              shape: RoundedRectangleBorder(
                side: BorderSide(
                  width: 1.50,
                  color: isActive ? const Color(0xFF34A853) : Colors.grey,
                ),
                borderRadius: BorderRadius.circular(15),
              ),
              shadows: [
                BoxShadow(
                  color: isActive ? const Color(0xFF34A853) : Colors.white,
                  blurRadius: 4,
                  offset: const Offset(0, 0),
                  spreadRadius: 0,
                )
              ],
            ),
            child: Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15), color: Colors.white),
              child: Center(
                child: Image.asset(
                  image,
                
                ),
              ),
            ),
          ),
        ),
        const SizedBox(height: 10,),
        Text(title,style: const TextStyle(color: Color(0xff464E57)),)
      ],
    );
  }
}
