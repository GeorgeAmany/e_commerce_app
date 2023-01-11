import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:new_array_app/screens/login/view.dart';
import 'package:new_array_app/shared/design/my_bottom_navigation_bar.dart';

class OnBoardScreen1 extends StatelessWidget {
  const OnBoardScreen1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: EdgeInsetsDirectional.only(top: 60.h, start: 300.w),
                child: TextButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (BuildContext context) =>
                            const MyBottomNavigationBar(),
                      ),
                    );
                  },
                  child: Text(
                    'Skip',
                    style: TextStyle(fontSize: 20.sp, color: Colors.black),
                  ),
                ),
              ),
              SizedBox(
                height: 154.h,
              ),
              SvgPicture.asset('assets/icons/svg/on_board1.svg'),
              SizedBox(
                height: 11.h,
              ),
              Text(
                'Title',
                style: TextStyle(fontSize: 25.sp, fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 11.h,
              ),
              SizedBox(
                width: 250.w,
                height: 84.h,
                child: Text(
                  'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Proin ut sapien ut arcu ullamcorper mattis et eu orci.',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 16.sp,
                    color: const Color(0xff7B7B7B),
                  ),
                ),
              ),
              SizedBox(
                height: 20.h,
              ),
              Text(
                '...',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 50.sp,
                  color: const Color(0xffE14B34),
                ),
              ),
              SizedBox(
                height: 20.h,
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (BuildContext context) => const OnBoardScreen2(),
                    ),
                  );
                },
                style: ButtonStyle(
                  fixedSize: MaterialStatePropertyAll(
                    Size(264.w, 44.h),
                  ),
                ),
                child: Text(
                  'Next',
                  style: TextStyle(fontSize: 17.sp),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class OnBoardScreen2 extends StatelessWidget {
  const OnBoardScreen2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: EdgeInsetsDirectional.only(top: 60.h, start: 300.w),
                child: TextButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (BuildContext context) =>
                            const MyBottomNavigationBar(),
                      ),
                    );
                  },
                  child: Text(
                    'Skip',
                    style: TextStyle(fontSize: 20.sp, color: Colors.black),
                  ),
                ),
              ),
              SizedBox(
                height: 154.h,
              ),
              SvgPicture.asset('assets/icons/svg/on_board2.svg'),
              SizedBox(
                height: 11.h,
              ),
              Text(
                'Title',
                style: TextStyle(fontSize: 25.sp, fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 11.h,
              ),
              SizedBox(
                width: 250.w,
                height: 84.h,
                child: Text(
                  'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Proin ut sapien ut arcu ullamcorper mattis et eu orci.',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 16.sp,
                    color: const Color(0xff7B7B7B),
                  ),
                ),
              ),
              SizedBox(
                height: 20.h,
              ),
              Text(
                '...',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 50.sp,
                  color: const Color(0xffE14B34),
                ),
              ),
              SizedBox(
                height: 20.h,
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (BuildContext context) => const OnBoardScreen3(),
                    ),
                  );
                },
                style: ButtonStyle(
                  fixedSize: MaterialStatePropertyAll(
                    Size(264.w, 44.h),
                  ),
                ),
                child: Text(
                  'Next',
                  style: TextStyle(fontSize: 17.sp),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class OnBoardScreen3 extends StatelessWidget {
  const OnBoardScreen3({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: EdgeInsetsDirectional.only(top: 60.h, start: 300.w),
                child: TextButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (BuildContext context) =>
                            const MyBottomNavigationBar(),
                      ),
                    );
                  },
                  child: Text(
                    'Skip',
                    style: TextStyle(fontSize: 20.sp, color: Colors.black),
                  ),
                ),
              ),
              SizedBox(
                height: 154.h,
              ),
              SvgPicture.asset('assets/icons/svg/on_board3.svg'),
              SizedBox(
                height: 11.h,
              ),
              Text(
                'Title',
                style: TextStyle(fontSize: 25.sp, fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 11.h,
              ),
              SizedBox(
                width: 250.w,
                height: 84.h,
                child: Text(
                  'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Proin ut sapien ut arcu ullamcorper mattis et eu orci.',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 16.sp,
                    color: const Color(0xff7B7B7B),
                  ),
                ),
              ),
              SizedBox(
                height: 20.h,
              ),
              Text(
                '...',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 50.sp,
                  color: const Color(0xffE14B34),
                ),
              ),
              SizedBox(
                height: 20.h,
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (BuildContext context) =>
                          const LoginScreen(),
                    ),
                  );
                },
                style: ButtonStyle(
                  fixedSize: MaterialStatePropertyAll(
                    Size(264.w, 44.h),
                  ),
                ),
                child: Text(
                  'Get started',
                  style: TextStyle(fontSize: 17.sp),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
