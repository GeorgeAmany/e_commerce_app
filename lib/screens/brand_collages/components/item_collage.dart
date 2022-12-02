import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../brand_profile/view.dart';
import '../model.dart';

class ItemCollage extends StatelessWidget {
  final BrandCollageModel collageModel;

  const ItemCollage({Key? key, required this.collageModel}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: EdgeInsetsDirectional.only(start: 8.w),
          child: SizedBox(
            width: 390.w,
            height: 70.h,
            child: InkWell(
              onTap: (){
                Navigator.push(context, MaterialPageRoute (
                  builder: (BuildContext context) =>  const BrandProfileScreen(),
                ),);
              },
              child: ListTile(
                leading: CircleAvatar(
                  maxRadius: 27.r,
                  backgroundImage: NetworkImage(collageModel.imageAvatarUrl),
                ),
                title: Text(
                  collageModel.userName,
                  style: TextStyle(fontSize: 20.sp, color: Colors.black),
                ),
                subtitle: Text(collageModel.time,
                    style: TextStyle(fontSize: 16.sp, color: const Color(0xff7B7B7B))),
                trailing: Image.asset(
                  'assets/icons/download.png',
                  height: 29.5.h,
                  width: 29.5.w,
                ),
              ),
            ),
          ),
        ),
        Padding(
          padding: EdgeInsetsDirectional.only(start: 17.w),
          child: SizedBox(
            width: 360.w,
            height: 497.h,
            child: Container(
              decoration: BoxDecoration(
                  image: DecorationImage(
                image: NetworkImage(collageModel.imageUrl),
                fit: BoxFit.fill,
              )),
            ),
          ),
        ),
        Row(
          children: [
            Padding(
              padding: EdgeInsetsDirectional.only(start: 20.w, top: 19.h),
              child: SizedBox(
                height: 50.h,
                child: Text(
                  collageModel.collageName,
                  style:
                      TextStyle(fontSize: 20.sp, fontWeight: FontWeight.bold),
                ),
              ),
            ),
            const Spacer(),
            IconButton(onPressed: () {}, icon: const Icon(Icons.share)),
            Padding(
              padding: EdgeInsetsDirectional.only(end: 20.w),
              child: Container(
                width: 45.w,
                height: 45.h,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(7.r),
                  color: const Color(0xffE14B34),
                ),
                child: IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.shopping_cart,
                    color: Colors.white,
                  ),
                ),
              ),
            )
          ],
        ),
        Padding(
          padding:
              EdgeInsetsDirectional.only(start: 20.w, end: 20.w, top: 16.h),
          child: ElevatedButton(
            onPressed: () {},
            style: ElevatedButton.styleFrom(fixedSize: Size(351.w, 45.h)),
            child: Text(
              'Edit collage',
              style: TextStyle(fontSize: 18.sp),
            ),
          ),
        ),
        SizedBox(
          height: 33.3.h,
        ),
         Divider(
          thickness: 8.h,
          color: const Color(0xffE4E4E4),
        ),
        SizedBox(
          height: 33.3.h,
        ),
      ],
    );
  }
}
