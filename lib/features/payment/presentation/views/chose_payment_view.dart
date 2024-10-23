import 'dart:developer';

import 'package:delivery/core/widgets/custom_alert.dart';
import 'package:delivery/core/widgets/custom_app_bar.dart';
import 'package:delivery/features/payment/data/models/payment_intent_input_model/payment_intent_input_model.dart';
import 'package:delivery/features/payment/presentation/manager/payment_cubit/payment_cubit.dart';
import 'package:delivery/features/payment/presentation/views/payment_done_view.dart';
import 'package:delivery/features/payment/presentation/views/widgets/payment_method_list_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:rflutter_alert/rflutter_alert.dart';

class ChosePaymentView extends StatelessWidget {
  const ChosePaymentView({super.key});
  static String id = 'ChosePaymentView';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocListener<PaymentCubit, PaymentState>(
        listener: (context, state) {
          if (state is PaymentSuccess) {
            log('payment success');
          } else if (state is Paymentfailure) {
            log(state.errMessage);
            showCustomAlert(
                context: context,
                type: AlertType.error,
                title: 'Error',
                description: state.errMessage,
                onPressed: () {
                  Navigator.of(context).pop();
                },
                actionTitle: 'ok');
          }
        },
        child: Column(
          children: [
            const CustomAppBar(title: 'Payment'),
            const SizedBox(
              height: 30,
            ),
            Expanded(child: PaymentMethodsListView(
              onTap: () async {
                PaymentIntenInputtModel paymentIntenInputtModel =
                    PaymentIntenInputtModel(
                        amount: '6000',
                        currency: 'usd',
                        customerId: 'cus_R4GkpuVG819x7k');
                await BlocProvider.of<PaymentCubit>(context).makePayment(
                    paymentIntenInputtModel: paymentIntenInputtModel);
                log('doneeeeeee');
                Navigator.pushReplacementNamed(context, PaymentDoneView.id);
              },
            ))
          ],
        ),
      ),
    );
  }
}
