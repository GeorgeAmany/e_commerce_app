import 'package:flutter/material.dart';

class ItemBrandProducts extends StatefulWidget {
  final int colorProducts ;
  const ItemBrandProducts({Key? key, required this.colorProducts}) : super(key: key);

  @override
  State<ItemBrandProducts> createState() => _ItemBrandProductsState();
}

class _ItemBrandProductsState extends State<ItemBrandProducts> {

  bool isFav = false ;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 20),
      child: Column(
        children: [
          SizedBox(
            height: 170,
            width: 167,
            child: Stack(
              children: [
                Container(
                  height: 170,
                  width: 167,
                  decoration: BoxDecoration(
                    color: Color(0xffC1C6C8*(widget.colorProducts+1)),
                    borderRadius: BorderRadiusDirectional.circular(8),
                  ),
                ),
                Align(
                  alignment: AlignmentDirectional.topEnd,
                  child: IconButton(
                    onPressed: () {
                      isFav = !isFav ;
                      setState(() {

                      });
                    },
                    icon:Icon(
                        isFav ? Icons.favorite : Icons.favorite_border,
                      color: isFav ? Colors.red : Colors.black,
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
            style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
          ),
        ],
      ),
    );
  }
}
