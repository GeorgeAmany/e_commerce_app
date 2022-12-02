import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ItemGroup extends StatelessWidget {
  final String imageUrl , title;
  final double width , height ;

  const ItemGroup({Key? key, required this.imageUrl, required this.title, required this.width, required this.height}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 105.h,
      width: 106.w,
      decoration: BoxDecoration(
        color: const Color(0xffEEEEEE),
        borderRadius: BorderRadius.circular(12),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(imageUrl,width: width ,height: height,),
          SizedBox(height: 7.h,),
          Text(title,style: TextStyle(fontSize:15.sp ),),
        ],
      ),
    );
  }
}
