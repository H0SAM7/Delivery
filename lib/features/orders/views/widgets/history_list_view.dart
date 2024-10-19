import 'package:delivery/features/orders/views/widgets/hitstory_item.dart';
import 'package:flutter/material.dart';

class HistoryListView extends StatelessWidget {
  const HistoryListView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: 5,
        itemBuilder: (context, index) {
          return HitstoryItem();
        });
  }
}
