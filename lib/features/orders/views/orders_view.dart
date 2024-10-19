import 'package:delivery/constants.dart';
import 'package:delivery/core/utils/assets.dart';
import 'package:delivery/core/widgets/custom_app_bar.dart';
import 'package:delivery/features/auth/views/widgets/custom_send_button.dart';
import 'package:delivery/features/orders/views/widgets/history_list_view.dart';
import 'package:delivery/features/orders/views/widgets/history_view.dart';
import 'package:delivery/features/orders/views/widgets/hitstory_item.dart';
import 'package:delivery/features/orders/views/widgets/ongoing_view.dart';
import 'package:delivery/features/orders/views/widgets/order_item.dart';
import 'package:delivery/features/orders/views/widgets/orders_list_view.dart';
import 'package:flutter/material.dart';

class OrdersView extends StatelessWidget {
  const OrdersView({super.key});
  static String id = 'OrdersView';
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      initialIndex: 1,
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          
          title: Text('My Orders'),
          elevation: 0,
          backgroundColor: Colors.white,
          bottom:  TabBar(
            unselectedLabelStyle:const TextStyle(color: Color(0xffA5A7B9)),
            labelColor:orangeColor,
            indicatorColor:orangeColor,
            dividerColor:orangeColor,
            tabs: <Widget>[
              Tab(
                text: 'Ongoing',
              ),
              Tab(
                text: 'History',
              ),
            ],
          ),
        ),
        body: const TabBarView(
          children: [
            OngingList(),
            HistoryList(),
          ],
        ),
      ),
    );
  }
}



