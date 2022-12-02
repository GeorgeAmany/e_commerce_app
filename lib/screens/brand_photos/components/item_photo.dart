import 'package:flutter/material.dart';

import '../model.dart';

class ItemPhoto extends StatelessWidget {
  final BrandPhotoModel model ;
  const ItemPhoto({Key? key , required this.model} ) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 40),
      child: Column(
        children: [
          Image.network(
            model.imageUrl ,
            height: 390,
            width: 390,
          ),
          Padding(
            padding: const EdgeInsetsDirectional.only(start: 20, end: 17),
            child: Row(
              children: [
                IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.favorite_border_outlined),
                ),
                Text(
                  'liked by ${model.numOfLikes} others',
                  style: const TextStyle(fontSize: 17),
                ),
                const Spacer(),
                IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.share),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsetsDirectional.only(
              start: 20,
              end: 17,

            ),
            child: Row(
              children: [
                Text(
                  model.description,
                  style: const TextStyle(fontSize: 16.5, color: Color(0xff707070)),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
