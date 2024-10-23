import 'dart:developer';

import 'package:delivery/core/widgets/custom_alert.dart';
import 'package:delivery/features/payment/data/models/payment_intent_input_model/payment_intent_input_model.dart';
import 'package:delivery/features/payment/presentation/manager/payment_cubit/payment_cubit.dart';
import 'package:delivery/features/payment/presentation/views/payment_done_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:rflutter_alert/rflutter_alert.dart';

class StripeTest extends StatelessWidget {
  const StripeTest({super.key});
  static String id = 'Tst';
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => PaymentCubit(),
      child: Scaffold(
        body: Center(
        //  child: testButton(),
        ),
      ),
    );
  }
}

// class testButton extends StatelessWidget {
//   const testButton({
//     super.key,
//   });

//   @override
//   Widget build(BuildContext context) {
//     return BlocListener<PaymentCubit, PaymentState>(
//       listener: (context, state) {
//         if (state is PaymentSuccess) {
//           log('payment success');
//         } else if (state is Paymentfailure) {
//           log(state.errMessage);
//           showCustomAlert(
//               context: context,
//               type: AlertType.error,
//               title: 'Error',
//               description: state.errMessage,
//               onPressed: () {
//                 Navigator.of(context).pop();
//               },
//               actionTitle: 'ok');
//         }
//       },
//       child: IconButton(
//           onPressed: () async {
//             PaymentIntenInputtModel paymentIntenInputtModel =
//                 PaymentIntenInputtModel(
//                     amount: '100',
//                     currency: 'usd',
//                     customerId: 'cus_R4GkpuVG819x7k');
//             await BlocProvider.of<PaymentCubit>(context)
//                 .makePayment(paymentIntenInputtModel: paymentIntenInputtModel);
//             log('doneeeeeee');
//             Navigator.pushReplacementNamed(context, PaymentDoneView.id);
//           },
//           icon: Icon(
//             Icons.account_box_outlined,
//             size: 60,
//           )),
//     );
//   }
// }
