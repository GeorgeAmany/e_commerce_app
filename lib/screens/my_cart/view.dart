import 'package:flutter/material.dart';
import 'package:new_array_app/shared/design/my_app_bar.dart';
import 'components/item_cart.dart';

class MyCartScreen extends StatelessWidget {
  const MyCartScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const MyAppBar(
        title: 'My cart',
        showFilter: false,
      ),

      body: ListView(
        children: const [
          ItemCart(title: 'This product full name', subTitle: '\$29.00',),
          Divider(thickness: 1, indent: 120,endIndent: 25,),
          ItemCart(title: 'This product full name', subTitle: '\$47.00',),
          Divider(thickness: 1, indent: 120,endIndent: 25,),
          ItemCart(title: 'This product full name', subTitle: '\$34.00',),
        ],
      ),


    );
  }
}
