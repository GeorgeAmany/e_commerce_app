import 'package:flutter/material.dart';
import 'package:flutter_dialogs/flutter_dialogs.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:new_array_app/screens/brand_collages/view.dart';
import 'package:new_array_app/screens/login/view.dart';
import 'package:new_array_app/screens/my_dis_likes/view.dart';
import 'package:new_array_app/screens/my_orders/view.dart';
import 'package:new_array_app/shared/design/my_app_bar.dart';

import 'components/item_profile.dart';
import 'components/item_settings.dart';

class MyProfileScreen extends StatelessWidget {
  const MyProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const MyAppBar(
        title: 'My Profile',
        showFilter: false,
        showAlarm: true,
      ),
      body: ListView(
        children: [
          Container(
            width: double.infinity,
            height: 120,
            color: const Color(0xffEEEEEE),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsetsDirectional.only(
                    start: 13,
                  ),
                  child: Row(
                    children: [
                      const Text(
                        'Full name',
                        style: TextStyle(
                            fontSize: 30, fontWeight: FontWeight.bold),
                      ),
                      const Spacer(),
                      Padding(
                        padding:
                            const EdgeInsetsDirectional.only(end: 19, top: 16),
                        child: InkWell(
                          child: SizedBox(
                            width: 58,
                            height: 58,
                            child: Stack(
                              children: [
                                const CircleAvatar(
                                  backgroundImage: NetworkImage(
                                      'https://www.speedymentors.com/avatar/getty_481292845_77896.jpg'),
                                  radius: 31,
                                ),
                                Align(
                                  alignment: AlignmentDirectional.bottomEnd,
                                  child: Container(
                                    height: 27,
                                    width: 27,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(30),
                                      color: const Color(0xffE14B34),
                                    ),
                                    child: Padding(
                                      padding:
                                          const EdgeInsetsDirectional.all(5.8),
                                      child: Image.asset(
                                        'assets/icons/pin.png',
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          onTap: () {},
                        ),
                      )
                    ],
                  ),
                ),
                Padding(
                  padding:
                      const EdgeInsetsDirectional.only(start: 16, bottom: 21),
                  child: Row(
                    children: const [
                      Text(
                        'example@gmail.com',
                        style:
                            TextStyle(fontSize: 14, color: Color(0xff7B7B7B)),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
          const SizedBox(
            height: 18,
          ),
          InkWell(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (BuildContext context) => BrandCollagesScreen(),
                ),
              );
            },
            child: const ItemProfile(
              title: 'My collages',
              subTitle: '10 items',
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          InkWell(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (BuildContext context) => const MyDisLikesScreen(),
                ),
              );
            },
            child: const ItemProfile(
              title: 'My likes',
              subTitle: '40 items',
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          InkWell(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (BuildContext context) => const MyDisLikesScreen(),
                ),
              );
            },
            child: const ItemProfile(
              title: 'My dislikes',
              subTitle: '20 items',
            ),
          ),
          const SizedBox(
            height: 18,
          ),
          const Divider(
            thickness: 6,
            color: Color(0xffEEEEEE),
          ),
          const Padding(
            padding: EdgeInsetsDirectional.only(start: 24, top: 21),
            child: Card(
              elevation: 0,
              child: Text(
                'Settings',
                style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
              ),
            ),
          ),
          const SizedBox(
            height: 16,
          ),
          InkWell(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (BuildContext context) => const MyOrdersScreen(),
                ),
              );
            },
            child: const ItemSettings(
              title: 'My orders',
              icon: Icons.shopping_cart,
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          const ItemSettings(
            title: 'Saved addresses',
            icon: Icons.location_pin,
          ),
          const SizedBox(
            height: 10,
          ),
          InkWell(
            child: const ItemSettings(
              title: 'Logout',
              icon: Icons.settings,
            ),
            onTap: () {
              _showAlert(context);
            },
          ),
          const SizedBox(
            height: 21,
          ),
        ],
      ),
    );
  }

  _showAlert(BuildContext context) {
    showPlatformDialog(
      context: context,
      builder: (context) => BasicDialogAlert(
        title: Center(
          child: Text(
            "Alert",
            style: TextStyle(fontSize: 22.sp, fontWeight: FontWeight.bold),
          ),
        ),
        content: SizedBox(
          width: double.infinity,
          child: Text(
            "     Are you Sure want to Logout ",
            style: TextStyle(fontSize: 15.sp),
          ),
        ),
        actions: [
          ElevatedButton(
            style: ButtonStyle(
              fixedSize: MaterialStatePropertyAll(
                Size(130.w, 54.h),
              ),
              backgroundColor: const MaterialStatePropertyAll(Colors.white),
            ),
            child: Text(
              "Cancel",
              style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 17.sp),
            ),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
          ElevatedButton(
            style: ButtonStyle(
              fixedSize: MaterialStatePropertyAll(
                Size(130.w, 54.h),
              ),
            ),
            child: Text(
              "Logout",
              style: TextStyle(fontSize: 17.sp, fontWeight: FontWeight.bold),
            ),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (BuildContext context) => const LoginScreen(),
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
