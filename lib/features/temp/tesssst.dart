import 'dart:developer';

import 'package:delivery/core/utils/dio_helper.dart';
import 'package:delivery/features/home/data/models/menu_model/menu_model.dart';
import 'package:delivery/features/home/presentation/views/widgets/product_details_item.dart';
import 'package:delivery/features/payment/presentation/views/widgets/payment_method_list_view.dart';
import 'package:flutter/material.dart';

class Tesssst extends StatelessWidget {
  const Tesssst({super.key});
  static String id = 'Tesssst';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
       
          Center(
            child: IconButton(
              onPressed: ()async {
               // await GetDataImpl().getMenu();
              },
              icon: Icon(
                Icons.add,
                size: 100,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

// Future getMenu() async {
//   String url =
//       'https://api.spoonacular.com/food/menuItems/search?query=burger&number=2&apiKey=acd1078909984959bdbd10f768c72c26';
//   List<MenuModel> menu = [];
//   var response = await DioServices().getAllBooks(url: url, quary: '');
//   try {
//     for (var item in response['menuItems']) {
//       menu.add(MenuModel.fromJson(item));
//     }
//     log('fetch done');
//     return menu;
//   } catch (e) {
//     log('errrrrrrrrrr');
//   }
// }
