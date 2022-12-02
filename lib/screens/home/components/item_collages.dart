import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ItemCollages extends StatelessWidget {
  const ItemCollages({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: 152.w,
          height: 152.h,
          decoration: BoxDecoration(
            color: const Color(0xff6C1DBC),
            borderRadius: BorderRadius.circular(8),
          ),
        ),
        SizedBox(height: 10.h,),
        const Text('This product full' ,style: TextStyle(fontSize: 11),),
        SizedBox(height: 3.h,),
        const Text('name',style: TextStyle(fontSize: 11),),
        SizedBox(height: 5.h,),
        const Text('EGP29.00',style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold),),
      ],
    );
  }
}
