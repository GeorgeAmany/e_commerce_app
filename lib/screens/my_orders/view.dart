import 'package:flutter/material.dart';
import 'package:new_array_app/shared/design/my_app_bar.dart';
import 'components/item_my_orders.dart';

class MyOrdersScreen extends StatelessWidget {
  const MyOrdersScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const MyAppBar(title: 'My Orders', showFilter: false),
      body: ListView.builder(
        itemBuilder: (context, index) => const ItemMyOrders(),
        itemCount: 10,
      ),
    );
  }
}
