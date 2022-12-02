import 'package:flutter/material.dart';
import 'package:new_array_app/screens/brand_photos/components/item_photo.dart';
import 'package:new_array_app/shared/design/my_app_bar.dart';

import 'model.dart';

class BrandPhotosScreen extends StatelessWidget {
  BrandPhotosScreen({Key? key}) : super(key: key);

  List<BrandPhotoModel> listt = [
    BrandPhotoModel(id: 0, imageUrl: "https://ae01.alicdn.com/kf/HTB16.SoMVzqK1RjSZFvq6AB7VXac/2019-Men-Double-Breasted-Wedding-Groom-Suit-With-Pants-Tuxedo-For-Men-Wedding-Suits-Prom-Best.jpg", description: "Product description to be added in this box ", numOfLikes: 678, isLiked: false),
    BrandPhotoModel(id: 1, imageUrl: "https://avatars.mds.yandex.net/get-images-cbir/7003513/8SP7DFjrUnrMTRPm2MSxoA8758/ocr", description: "Product description to be added in this box ", numOfLikes: 599, isLiked: true),
    BrandPhotoModel(id: 2, imageUrl: "https://avatars.mds.yandex.net/get-images-cbir/7678182/ssAAixm9P_ywMeiVQfRMfQ8784/ocr", description: "Product description to be added in this box ", numOfLikes: 1000, isLiked: false),
    BrandPhotoModel(id: 3, imageUrl: "https://i.pinimg.com/736x/6c/d8/e3/6cd8e3986aa7ca8b3e261ef25bf409ea--oliver-cheshire-bromley.jpg", description: "Product description to be added in this box ", numOfLikes: 200, isLiked: true),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const MyAppBar(
        title: 'Brand Photos',
      ),
      body: ListView.builder(
        itemBuilder: (context, index) => ItemPhoto(model: listt[index]),
        itemCount: listt.length,
      ),


    );
  }
}
