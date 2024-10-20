import 'dart:developer';
import 'package:bloc/bloc.dart';
import 'package:delivery/features/payment/data/models/payment_intent_input_model/payment_intent_input_model.dart';
import 'package:delivery/features/payment/data/repos/payment_check_out_impl.dart';
import 'package:meta/meta.dart';

part 'payment_state.dart';

class PaymentCubit extends Cubit<PaymentState> {
  PaymentCubit() : super(PaymentInitial());
  final PaymentCheckOutImpl paymentCheckOutImpl = PaymentCheckOutImpl();

  Future makePayment(
      {required PaymentIntenInputtModel paymentIntenInputtModel}) async {
    emit(PaymentLoading());

    var data = await paymentCheckOutImpl.makePayment(
        paymentIntenInputtModel: paymentIntenInputtModel);
    data.fold(
        (left) => emit(Paymentfailure(errMessage: left.errMessage.toString())),
        (right) => emit(PaymentSuccess()));
  }

  @override
  void onChange(Change<PaymentState> change) {
    log(change.toString());
    super.onChange(change);
  }
}
