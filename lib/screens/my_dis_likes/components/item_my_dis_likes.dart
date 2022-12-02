import 'package:flutter/material.dart';

class ItemMyDisLikes extends StatefulWidget {
  final int colorIndex ;
  const ItemMyDisLikes({Key? key, required this.colorIndex}) : super(key: key);

  @override
  State<ItemMyDisLikes> createState() => _ItemMyDisLikesState();
}

class _ItemMyDisLikesState extends State<ItemMyDisLikes> {
  bool isFav = false;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 167,
          width: 167,
          child: Stack(
            children: [
              Container(
                height: 167,
                width: 167,
                decoration: BoxDecoration(
                  color: Color(0xff034C65*(widget.colorIndex+1)),
                  borderRadius: BorderRadiusDirectional.circular(8),
                ),
              ),
              Align(
                alignment: AlignmentDirectional.topEnd,
                child: IconButton(
                  onPressed: () {
                    isFav = !isFav;
                    setState(() {});
                  },
                  icon: Icon(
                    isFav ? Icons.favorite :Icons.favorite_border ,
                    color: isFav ? Colors.red : Colors.black
                    ,
                  ),
                ),
              ),
            ],
          ),
        ),
        const SizedBox(
          height: 11,
        ),
        const Text(
          'This product full',
          style: TextStyle(fontSize: 11),
        ),
        const SizedBox(
          height: 3,
        ),
        const Text(
          'name',
          style: TextStyle(fontSize: 11),
        ),
        const SizedBox(
          height: 5,
        ),
        const Text(
          'EGP29.00',
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
        ),
      ],
    );
  }
}
