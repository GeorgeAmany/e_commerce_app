import 'package:flutter/material.dart';
import 'package:new_array_app/shared/design/my_app_bar.dart';

import 'components/brand_products_bottom_bar.dart';
import 'components/item_brand_products.dart';

class BrandProductsScreen extends StatelessWidget {
  const BrandProductsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const MyAppBar(title: 'Brand Products' ,bottom: BrandProductsBottomBar()),
      body: GridView.builder(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          childAspectRatio: 167/237 ,
        ),
        itemBuilder: (context, index) => ItemBrandProducts(colorProducts: index,),
        itemCount: 10,
      ),
    );
  }
}
