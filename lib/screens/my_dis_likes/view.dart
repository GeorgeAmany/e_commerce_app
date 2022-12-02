import 'package:flutter/material.dart';
import '../../shared/design/my_app_bar.dart';
import 'components/dis_likes_bottom_bar.dart';
import 'components/item_my_dis_likes.dart';

class MyDisLikesScreen extends StatelessWidget {
  const MyDisLikesScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const MyAppBar(
        title: 'My Dislikes',
        showAlarm: false,
        showFilter: true,
        bottom: MyDisLikesBottomBar(),
      ),
      body: GridView.builder(
        padding: const EdgeInsetsDirectional.only(top: 20),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          childAspectRatio: 167 / 238,
        ),
        itemBuilder: (context, index) => ItemMyDisLikes(colorIndex: index, ),
        itemCount: 10,
      ),
    );
  }
}
