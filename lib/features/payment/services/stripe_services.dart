import 'dart:developer';

import 'package:delivery/features/payment/data/models/customer_model/customer_model.dart';
import 'package:delivery/features/payment/data/models/ephemeral_key_model/ephemeral_key_model.dart';
import 'package:delivery/features/payment/data/models/payment_intent_input_model/payment_intent_input_model.dart';
import 'package:delivery/features/payment/data/models/payment_intent_model/payment_intent_model.dart';
import 'package:delivery/features/payment/services/api_services.dart';
import 'package:delivery/keys/api_keys.dart';
import 'package:dio/dio.dart';
import 'package:flutter_stripe/flutter_stripe.dart';

class StripeServices {
  final ApiServices apiServices = ApiServices();
  String creatrCustomerIdUrl = 'https://api.stripe.com/v1/customers';

  Future createCustomer({required String email}) async {
    await apiServices.post(body: {
      'email': email,
    }, url: creatrCustomerIdUrl, token: ApiKeys.stripeKey,
          contentType: Headers.formUrlEncodedContentType,

    );
  }

  String testPaymentUrl = 'https://api.stripe.com/v1/payment_intents';

  Future<PaymentIntentModel> createPaymentIntentModel(
    PaymentIntenInputtModel paymentIntenInputtModel,
  ) async {
    var response = await apiServices.post(
      body: paymentIntenInputtModel.toJson(),
      url: testPaymentUrl,
      token: ApiKeys.stripeKey,
      contentType: Headers.formUrlEncodedContentType,
    );
    var paymentIntentModel = PaymentIntentModel.fromJson(response.data);
    log('post payment  intent model  done $paymentIntentModel');

    return paymentIntentModel;
  }
//-----------------------------------------------------------
//-----------------------------------------------------------
//-----------------------------------------------------------
//-----------------------------------------------------------
//-----------------------------------------------------------

  Future<void> initIntentPaymentSheet({
    required CustomerModel customerModel,
  }) async {
    await Stripe.instance.initPaymentSheet(
        paymentSheetParameters: SetupPaymentSheetParameters(
      // Set to true for custom flow
      customFlow: false,
      // Main params
      merchantDisplayName: 'Hosam',
      paymentIntentClientSecret: customerModel.clientrSecert,
      customerEphemeralKeySecret: customerModel.ephemralKey,
      customerId: customerModel.customerid,
    ));
  }

//-----------------------------------------------------------
//-----------------------------------------------------------
//-----------------------------------------------------------
//-----------------------------------------------------------
//-----------------------------------------------------------

  Future displayPaymentSheet() async {
    await Stripe.instance.presentPaymentSheet();
  }

//-----------------------------------------------------------
//-----------------------------------------------------------
//-----------------------------------------------------------
//-----------------------------------------------------------

  Future makePayment(
      {required PaymentIntenInputtModel paymentIntenInputtModel}) async {
    var paymentIntentModel =
        await createPaymentIntentModel(paymentIntenInputtModel);
    var ephemeralKeyModel = await createEphemeralKey(
      customerId: paymentIntenInputtModel.customerId,
    );
    var customerModel = CustomerModel(
        clientrSecert: paymentIntentModel.clientSecret!,
        customerid: paymentIntenInputtModel.customerId,
        ephemralKey: ephemeralKeyModel.secret!);

    await initIntentPaymentSheet(customerModel: customerModel);
    await displayPaymentSheet();
  }

//-----------------------------------------------------------
//-----------------------------------------------------------
//-----------------------------------------------------------
//-----------------------------------------------------------
//-----------------------------------------------------------

  String customerUrl = 'https://api.stripe.com/v1/ephemeral_keys';

  Future<EphemeralKeyModel> createEphemeralKey(
      {required String customerId}) async {
    var response = await apiServices.post(
        body: {
          'customer': customerId,
        },
        url: customerUrl,
        token: ApiKeys.stripeKey,
        contentType: Headers.formUrlEncodedContentType,
        headers: {
          'Authorization': "Bearer ${ApiKeys.stripeKey}",
          'Stripe-Version': "2024-09-30.acacia"
        });
    var ephemeralKeyModel = EphemeralKeyModel.fromJson(response.data);
    log('post payment  intent model  done $ephemeralKeyModel');

    return ephemeralKeyModel;
  }
//-----------------------------------------------------------
//-----------------------------------------------------------
//-----------------------------------------------------------
//-----------------------------------------------------------
//-----------------------------------------------------------
}
