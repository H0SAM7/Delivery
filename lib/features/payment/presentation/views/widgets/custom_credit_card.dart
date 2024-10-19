import 'package:delivery/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_credit_card/flutter_credit_card.dart';

class CustomCreditCard extends StatefulWidget {
  const CustomCreditCard({
    super.key,
    required this.formKey,
    required this.autovalidateMode,
  });
  final GlobalKey<FormState> formKey;
  final AutovalidateMode autovalidateMode;
  @override
  State<CustomCreditCard> createState() => _CustomCreditCardState();
}

class _CustomCreditCardState extends State<CustomCreditCard> {
  String cardNumber = '', expiryDate = '', cardHolderName = '', cvvCode = '';
  bool showBackView = false;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CreditCardWidget(
          cardNumber: cardNumber,
          expiryDate: expiryDate,
          cardHolderName: cardHolderName,
          cvvCode: cvvCode,
          showBackView: showBackView,
          onCreditCardWidgetChange: (c) {},
          cardBgColor: orangeColor,
          isHolderNameVisible: true,
        ),
        CreditCardForm(
            cardNumber: cardNumber,
            expiryDate: expiryDate,
            cardHolderName: cardHolderName,
            cvvCode: cvvCode,
            autovalidateMode: widget.autovalidateMode,
            onCreditCardModelChange: (onCreditCardModelChange) {
              cardHolderName = onCreditCardModelChange.cardHolderName;
              cardNumber = onCreditCardModelChange.cardNumber;
              expiryDate = onCreditCardModelChange.expiryDate;
              cvvCode = onCreditCardModelChange.cvvCode;
              showBackView = onCreditCardModelChange.isCvvFocused;
              setState(() {});
            },
            formKey: widget.formKey)
      ],
    );
  }
}
