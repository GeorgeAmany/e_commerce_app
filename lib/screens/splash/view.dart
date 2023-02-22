import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:new_array_app/core/cache_helper.dart';

import '../login/view.dart';
import '../on_board/view.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    startTime();
  }

  startTime() async {
    var duration = const Duration(seconds: 5);
    return Timer(duration, () {
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (BuildContext context) => CacheHelper.getIsFirstTime()? const OnBoardScreen1(): const LoginScreen(),
        ),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              height: 80.h,
              width: 80.w,
              child: SvgPicture.asset("assets/icons/svg/logo.svg"),
            ),
            SizedBox(height: 21.h,),
            Text(
              'App Name',
              style: TextStyle(fontSize: 23.sp),
            ),
          ],
        ),
      ),
    );
  }
}
