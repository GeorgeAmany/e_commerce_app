import 'package:flutter/material.dart';

import '../../shared/design/my_app_bar.dart';
import 'components/item_collage.dart';
import 'model.dart';

class BrandCollagesScreen extends StatelessWidget {
  BrandCollagesScreen({Key? key}) : super(key: key);

  List<BrandCollageModel> listCollage = [
    BrandCollageModel(
        userName: "Noha Mohamed",
        collageName: " Formal Collection",
        imageUrl:
            "https://avatars.mds.yandex.net/get-images-cbir/6969518/ixXPm0Crp2ABTw2JvoHCcg8552/ocr",
        id: 0,
        time: '55m',
        imageAvatarUrl:
            'https://i3.wp.com/assets.turbologo.com/blog/en/2021/07/07045753/hm-symbol-logo.png'),
    BrandCollageModel(
        userName: "Nada Ahmad",
        collageName: " New Fashon Collection",
        imageUrl: "https://data.whicdn.com/images/335523619/original.jpg",
        id: 1,
        time: '4h',
        imageAvatarUrl:
            'https://i3.wp.com/assets.turbologo.com/blog/en/2021/07/07045753/hm-symbol-logo.png'),
    BrandCollageModel(
        userName: "Aber Fathe",
        collageName: " Casual Collection",
        imageUrl:
            "https://i.pinimg.com/originals/59/7f/20/597f201893e2ea99c3c5c49feae8f536.jpg",
        id: 2,
        time: '7h',
        imageAvatarUrl:
            'https://i3.wp.com/assets.turbologo.com/blog/en/2021/07/07045753/hm-symbol-logo.png'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const MyAppBar(
        title: 'Brand Collages',
        showFilter: false,
      ),
      body: ListView.builder(
        itemBuilder: (context, index) => ItemCollage(
          collageModel: listCollage[index],
        ),
        itemCount: listCollage.length,
      ),
    );
  }
}
