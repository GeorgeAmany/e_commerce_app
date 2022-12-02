import 'package:flutter/material.dart';

class MyDisLikesBottomBar extends StatelessWidget
    implements PreferredSizeWidget {
  const MyDisLikesBottomBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 7,
      child: TabBar(
        isScrollable: true,
        unselectedLabelColor: Colors.black,
        indicatorColor: Colors.black,
        indicator: BoxDecoration(
          color: Colors.black,
          borderRadius: BorderRadiusDirectional.circular(8),
        ),
        padding: const EdgeInsets.symmetric(horizontal: 18),
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
