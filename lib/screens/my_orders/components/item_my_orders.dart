import 'package:flutter/material.dart';

class ItemMyOrders extends StatelessWidget {
  const ItemMyOrders({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
      child: Container(
        height: 160,
        width: 350,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadiusDirectional.circular(8),
          boxShadow: [
            BoxShadow(
              blurRadius: 10,
              blurStyle: BlurStyle.outer,
              color: Colors.grey.withOpacity(.5),
              offset: const Offset(0, 2),
            ),
          ],
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
            Padding(
              padding: EdgeInsetsDirectional.only(start: 17, top: 20),
              child: Text('Order #00000', style: TextStyle(fontSize: 17 ,fontWeight: FontWeight.bold ,decoration: TextDecoration.underline),),
            ),
            Padding(
              padding: EdgeInsetsDirectional.only(start: 17, top: 9),
              child: Text('20 Dec 2022 3:00PM' ,style: TextStyle(fontSize: 17 , color: Color(0xff7B7B7B)),),
            ),
            Padding(
              padding: EdgeInsetsDirectional.only(start: 17, top: 9),
              child: Text('LE 0.00', style: TextStyle(fontSize: 17 ,fontWeight: FontWeight.bold ),),
            ),
            Align(
              alignment: AlignmentDirectional.bottomEnd,
              child: Padding(
                padding: EdgeInsetsDirectional.only(end: 15, bottom: 16 ,top: 15),
                child: Text('Delivered' ,  style: TextStyle(fontSize: 17 ,fontWeight: FontWeight.bold )),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
