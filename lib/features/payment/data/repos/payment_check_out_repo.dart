import 'package:dartz/dartz.dart';
import 'package:delivery/core/error/dio_failures.dart';
import 'package:delivery/features/payment/data/models/payment_intent_input_model/payment_intent_input_model.dart';

abstract class PaymentCheckOutRepo {
  Future<Either<Failure, void>> makePayment(
      {required PaymentIntenInputtModel paymentIntenInputtModel});
}
