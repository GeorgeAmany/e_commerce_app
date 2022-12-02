import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ItemCart extends StatelessWidget {
  const ItemCart({Key? key, required this.title, required this.subTitle})
      : super(key: key);

  final String title;

  final String subTitle;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsetsDirectional.only(
          start: 18.w, end: 17.w, top: 18.h, bottom: 10.5.h),
      child: Row(
        children: [
          Container(
            height: 100.h,
            width: 90.w,
            decoration: BoxDecoration(
              color: const Color(0xff034C65),
              borderRadius: BorderRadiusDirectional.circular(8.r),
            ),
          ),
          SizedBox(
            width: 264.w,
            child: Column(
              children: [
                Padding(
                  padding:  EdgeInsetsDirectional.only(start: 234.w),
                  child: Icon(
                    CupertinoIcons.trash,
                    size: 18.sp,
                  ),
                ),
                Padding(
                  padding: EdgeInsetsDirectional.only(end: 100.w),
                  child: Text(title,
                        style:
                            TextStyle(fontSize: 13.sp, fontWeight: FontWeight.bold)),
                ),

                SizedBox(
                  height: 5.h,
                ),
                Padding(
                  padding:EdgeInsetsDirectional.only(end: 170.w),
                  child: Text(subTitle,
                      style:
                          TextStyle(fontSize: 16.sp, fontWeight: FontWeight.bold)),
                ),
                Padding(
                  padding: EdgeInsetsDirectional.only(start: 170.w),
                  child: Row(
                    children: [
                      Container(
                        height: 30.h,
                        width: 30.w,
                        decoration: const BoxDecoration(
                          color: Color(0xffE6E6E6),
                        ),
                        child: Center(
                            child: Text(
                          '-',
                          style: TextStyle(
                              fontSize: 20.sp, fontWeight: FontWeight.bold),
                        )),
                      ),
                      Padding(
                        padding: EdgeInsetsDirectional.only(start: 11.w, end: 11.w),
                        child: Text('1',
                            style: TextStyle(
                                fontSize: 16.sp, fontWeight: FontWeight.bold)),
                      ),
                      Container(
                        height: 30.h,
                        width: 30.w,
                        decoration: const BoxDecoration(
                          color: Color(0xffE6E6E6),
                        ),
                        child: Center(
                            child: Text(
                          '+',
                          style: TextStyle(
                              fontSize: 20.sp, fontWeight: FontWeight.bold),
                        )),
                      )
                    ],
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
