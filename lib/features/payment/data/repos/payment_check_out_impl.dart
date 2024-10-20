import 'package:dartz/dartz.dart';
import 'package:delivery/core/error/dio_failures.dart';
import 'package:delivery/features/payment/data/models/payment_intent_input_model/payment_intent_input_model.dart';
import 'package:delivery/features/payment/data/repos/payment_check_out_repo.dart';
import 'package:delivery/features/payment/services/stripe_services.dart';
import 'package:dio/dio.dart';

class PaymentCheckOutImpl extends PaymentCheckOutRepo {
  final StripeServices stripeServices = StripeServices();
  @override
  Future<Either<Failure, void>> makePayment(
      {required PaymentIntenInputtModel paymentIntenInputtModel}) async {
    try {
      await stripeServices.makePayment(
          paymentIntenInputtModel: paymentIntenInputtModel);
      return right(null);
    } catch (e) {
      return left(ServerFailure.fromDioException(e as DioException));
    }
  }
}
