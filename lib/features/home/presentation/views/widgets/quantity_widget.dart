import 'package:delivery/constants.dart';
import 'package:delivery/core/styles/app_styles.dart';
import 'package:flutter/material.dart';

class QuantityWidget extends StatefulWidget {
  const QuantityWidget({
    super.key, this.color, this.iconSize,
  });
final Color? color;
final double? iconSize;
  @override
  State<QuantityWidget> createState() => _QuantityWidgetState();
}

class _QuantityWidgetState extends State<QuantityWidget> {
  int quantity = 1;

  @override
  Widget build(BuildContext context) {
    return Row(
       mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
            '\$${60 * quantity}',
            style: AppStyles.style24(context),
          ),
        Container(

          decoration: BoxDecoration(
            color:widget.color?? orangeColor,
            borderRadius: BorderRadius.circular(16),
          ),
          child: Row(
            children: [
              const SizedBox(
                width: 8,
              ),
              CircleAvatar(
                backgroundColor: const Color.fromARGB(39, 5, 5, 24),
                child: IconButton(
                  onPressed: () {
                    setState(() {
                      if (quantity > 1) {
                        quantity--;
                      }
                    });
                  },
                  icon: const Icon(Icons.remove),
                ),
              ),
              const SizedBox(
                width: 8,
              ),
              Text(
                quantity.toString(),
                style:
                    const TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
              ),
              const SizedBox(
                width: 8,
              ),
              CircleAvatar(
                backgroundColor: const Color.fromARGB(39, 5, 5, 24),
                child: IconButton(
                  onPressed: () {
                    setState(() {
                      quantity++;
                    });
                  },
                  icon: const Icon(Icons.add),
                ),
              ),
              const SizedBox(
                width: 8,
              ),
            ],
          ),
        ),
      ],
    );
  }
}
