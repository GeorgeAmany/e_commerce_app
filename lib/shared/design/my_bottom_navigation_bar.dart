import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:new_array_app/screens/brand_collages/view.dart';
import 'package:new_array_app/screens/brand_photos/view.dart';
import 'package:new_array_app/screens/my_cart/view.dart';
import 'package:new_array_app/screens/my_profile/view.dart';

import '../../screens/home/view.dart';

class MyBottomNavigationBar extends StatefulWidget {
  const MyBottomNavigationBar({Key? key}) : super(key: key);

  @override
  State<MyBottomNavigationBar> createState() => _MyBottomNavigationBarState();
}

class _MyBottomNavigationBarState extends State<MyBottomNavigationBar> {
  List<String> icons = [
    "home",
    "collage",
    "cart",
    "profile",
  ];
  List<Widget> pages = [
    const HomeScreen(),
    BrandPhotosScreen(),
    const MyCartScreen(),
    const MyProfileScreen()
  ];
  int currentPage = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: pages[currentPage],

      bottomNavigationBar: BottomNavigationBar(
        onTap: (value) {
          currentPage = value;
          setState(() {});
        },
        unselectedLabelStyle: TextStyle(fontSize: 0.sp),
        selectedLabelStyle: TextStyle(fontSize: 0.sp),
        type: BottomNavigationBarType.fixed,
        elevation: 0,
        currentIndex: currentPage,
        items: List.generate(
          icons.length,
              (index) => BottomNavigationBarItem(
              icon: SvgPicture.asset(
                'assets/icons/svg/${icons[index]}.svg',
                color: currentPage == index
                    ? const Color(0xffE14B34)
                    : Colors.black,
              ),
              label: ''),
        ),
      ),
    );
  }
}