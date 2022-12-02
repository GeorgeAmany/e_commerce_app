import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import '../brand_collages/view.dart';
import 'components/item_collages.dart';
import 'components/item_group.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Padding(
          padding: EdgeInsetsDirectional.only(start: 27.w),
          child: InkWell(
            child: SvgPicture.asset(
              'assets/icons/svg/logo.svg',
              height: 18.61.h,
              width: 27.41.w,
            ),
            onTap: () {},
          ),
        ),
        title: Padding(
          padding: EdgeInsetsDirectional.only(end: 130.w, top: 7.h),
          child: Text(
            'Name App',
            style: TextStyle(fontSize: 20.sp, fontWeight: FontWeight.bold),
          ),
        ),
        actions: [
          Padding(
            padding: EdgeInsetsDirectional.only(end: 29.0.w, top: 5.h),
            child: InkWell(
              child: Image.asset(
                'assets/icons/alarm.png',
                height: 20.8.h,
                width: 23.13.w,
              ),
              onTap: () {},
            ),
          ),
        ],
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 15.w),
        child: ListView(
          children: [
            Padding(
              padding: EdgeInsetsDirectional.only(top: 15.h, bottom: 25.h),
              child: SizedBox(
                height: 135.h,
                width: 360.w,
                child: Stack(
                  children: [
                    Container(
                        height: 135.h,
                        width: 360.w,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12.r),
                          color: Colors.black,
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: EdgeInsetsDirectional.only(
                                  start: 25.w, top: 35.h, bottom: 5.h),
                              child: Text(
                                'main title',
                                style: TextStyle(
                                    fontSize: 20.sp,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsetsDirectional.only(
                                  start: 25.w, end: 5.h, top: 5.h),
                              child: Row(
                                children: [
                                  Text(
                                    'Subtitle',
                                    style: TextStyle(
                                        fontSize: 15.sp, color: Colors.white),
                                  ),
                                  SizedBox(
                                    width: 5.w,
                                  ),
                                  InkWell(
                                    child: Image.asset(
                                      'assets/icons/right_arrow.png',
                                      height: 20.61,
                                      width: 27.41,
                                    ),
                                    onTap: () {},
                                  ),
                                ],
                              ),
                            ),
                          ],
                        )),
                    Align(
                      alignment: AlignmentDirectional.centerEnd,
                      child: Container(
                        height: 135.h,
                        width: 135.w,
                        decoration: BoxDecoration(
                          color: const Color(0xffEEEEEE),
                          borderRadius: BorderRadiusDirectional.only(
                            topEnd: Radius.circular(12.r),
                            bottomEnd: Radius.circular(12.r),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Row(
              children: [
                InkWell(
                  onTap: () {},
                  child: ItemGroup(
                    imageUrl: 'assets/icons/star_4.png',
                    title: 'Editor',
                    width: 43.w,
                    height: 43.h,
                  ),
                ),
                SizedBox(
                  width: 20.w,
                ),
                InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (BuildContext context) =>
                            BrandCollagesScreen(),
                      ),
                    );
                  },
                  child: ItemGroup(
                    imageUrl: 'assets/icons/star_5.png',
                    title: 'Collages',
                    width: 47.w,
                    height: 57.h,
                  ),
                ),
                SizedBox(
                  width: 20.w,
                ),
                InkWell(
                  onTap: () {},
                  child: ItemGroup(
                    imageUrl: 'assets/icons/light-preview.png',
                    title: 'Offers',
                    width: 37.w,
                    height: 39.h,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 25.h,
            ),
            Row(
              children: [
                Expanded(
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(6.r),
                    child: TextFormField(
                      style: TextStyle(fontSize: 15.sp),
                      decoration: const InputDecoration(
                        border: InputBorder.none,
                        fillColor: Color(0xffEBEBEB),
                        filled: true,
                        // label:
                        label: Text('Search Categoties'),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  width: 16.w,
                ),
                InkWell(
                  onTap: () {},
                  child: Container(
                    height: 54.h,
                    width: 54.w,
                    decoration: BoxDecoration(
                      color: Colors.black,
                      borderRadius: BorderRadius.circular(6.r),
                    ),
                    child: Center(
                      child: Image.asset(
                        'assets/icons/search.png',
                        width: 22.w,
                        height: 22.h,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 31.h,
            ),
            Row(
              children: [
                Text(
                  'Top Collages',
                  style: TextStyle(fontSize: 20.sp),
                ),
                const Spacer(),
                TextButton(
                  onPressed: () {},
                  child: Text(
                    'View All',
                    style: TextStyle(
                        fontSize: 15.sp,
                        fontWeight: FontWeight.bold,
                        color: Colors.black),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 13.h,
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Column(
                children: [
                  Row(
                    children: [
                      const ItemCollages(),
                      SizedBox(
                        width: 20.w,
                      ),
                      const ItemCollages(),
                      SizedBox(
                        width: 20.w,
                      ),
                      const ItemCollages(),
                      SizedBox(
                        width: 20.w,
                      ),
                      const ItemCollages(),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 33.h,
            ),
            Row(
              children: [
                Container(
                  height: 100.h,
                  width: 100.w,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(6.r),
                        bottomLeft: Radius.circular(6.r)),
                    color: const Color(0xffEEEEEE),
                  ),
                ),
                Column(
                  children: [
                    Padding(
                      padding: EdgeInsetsDirectional.only(start: 23.w),
                      child: Text(
                        "Top collages ",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 16.sp),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsetsDirectional.only(
                        top: 4.h,
                      ),
                      child: Text(
                        " 10 Items",
                        style: TextStyle(fontSize: 13.sp),
                      ),
                    ),
                  ],
                ),
                const Spacer(),
                Padding(
                  padding: EdgeInsetsDirectional.only(
                      top: 35.h, end: 30.w, bottom: 35.h),
                  child: SizedBox(
                    height: 30.h,
                    width: 30.w,
                    child: Center(
                      child: IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          Icons.chevron_right,
                          size: 30,
                          color: Color(0xff7B7B7B),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 31.h,
            ),
            Row(
              children: [
                Text(
                  'Best selling',
                  style: TextStyle(fontSize: 20.sp),
                ),
                const Spacer(),
                TextButton(
                  onPressed: () {},
                  child: Text(
                    'View All',
                    style: TextStyle(
                        fontSize: 15.sp,
                        fontWeight: FontWeight.bold,
                        color: Colors.black),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 13.h,
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Column(
                children: [
                  Row(
                    children: [
                      const ItemCollages(),
                      SizedBox(
                        width: 20.w,
                      ),
                      const ItemCollages(),
                      SizedBox(
                        width: 20.w,
                      ),
                      const ItemCollages(),
                      SizedBox(
                        width: 20.w,
                      ),
                      const ItemCollages(),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 25.h,
            ),
          ],
        ),
      ),
    );
  }
}
