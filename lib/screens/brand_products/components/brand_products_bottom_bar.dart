import 'package:flutter/material.dart';

class BrandProductsBottomBar extends StatelessWidget
    implements PreferredSizeWidget {
  const BrandProductsBottomBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 7,
      child: TabBar(
        padding:const EdgeInsets.symmetric(horizontal: 18) ,
        unselectedLabelColor: Colors.black,
        indicatorColor: Colors.black,
        isScrollable: true,
        indicator: BoxDecoration(
          color: Colors.black,
          borderRadius: BorderRadiusDirectional.circular(8),
        ),
        tabs: const [
          Tab(text: 'All'),
          Tab(text: 'One'),
          Tab(text: 'Two'),
          Tab(text: 'Three'),
          Tab(text: 'Four'),
          Tab(text: 'Five'),
          Tab(text: 'Six'),
        ],
      ),
    );
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize => const Size.fromHeight(32);
}
