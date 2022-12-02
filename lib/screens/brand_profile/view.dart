import 'package:flutter/material.dart';
import 'package:new_array_app/shared/design/my_app_bar.dart';

import 'components/item_explore.dart';

class BrandProfileScreen extends StatelessWidget {
  const BrandProfileScreen({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const MyAppBar(
        title: 'Brand Profile',
        showFilter: false,
      ),
      body: ListView(
        children: [
          const ListTile(
            leading: Padding(
              padding: EdgeInsetsDirectional.only(start: 5),
              child: CircleAvatar(
                backgroundImage: NetworkImage(
                    'https://avatars.mds.yandex.net/i?id=f866cdd64107d95a19aa53f45377bf27-5514197-images-thumbs&n=13'),
                radius: 30,
              ),
            ),
            title: Text(
              'Brand Name',
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
            subtitle: Padding(
              padding: EdgeInsetsDirectional.only(top: 6),
              child: Text(
                'About brand experience',
                style: TextStyle(fontSize: 14),
              ),
            ),
          ),
          Padding(
            padding:
                const EdgeInsetsDirectional.only(start: 18, top: 19, end: 18),
            child: Container(
              height: 40,
              decoration: BoxDecoration(boxShadow: [
                BoxShadow(
                    blurRadius: 4,
                    blurStyle: BlurStyle.outer,
                    color: Colors.grey.withOpacity(.3),
                    offset: const Offset(0, 3))
              ]),
              child: Row(
                children: const [
                  Padding(
                    padding: EdgeInsetsDirectional.only(start: 9, top: 8),
                    child: Icon(
                      Icons.location_on_outlined,
                      size: 30,
                    ),
                  ),
                  Center(
                    child: Text(
                      'Cairo, Nasr city ',
                      style: TextStyle(fontSize: 14),
                    ),
                  )
                ],
              ),
            ),
          ),
          Row(
            children: [
              Padding(
                padding: const EdgeInsetsDirectional.only(
                    start: 18, top: 13, bottom: 17),
                child: Container(
                  decoration: BoxDecoration(boxShadow: [
                    BoxShadow(
                        blurRadius: 4,
                        blurStyle: BlurStyle.outer,
                        color: Colors.grey.withOpacity(.3),
                        offset: const Offset(0, 3))
                  ], borderRadius: BorderRadius.circular(40)),
                  height: 40,
                  width: 40,
                  child: Center(
                    child: Image.asset(
                      'assets/icons/whatsapp.png',
                      width: 20,
                      height: 20,
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsetsDirectional.only(
                    start: 15, top: 13, bottom: 17),
                child: Container(
                  decoration: BoxDecoration(boxShadow: [
                    BoxShadow(
                        blurRadius: 4,
                        blurStyle: BlurStyle.outer,
                        color: Colors.grey.withOpacity(.3),
                        offset: const Offset(0, 3))
                  ], borderRadius: BorderRadius.circular(40)),
                  height: 40,
                  width: 40,
                  child: Center(
                    child: Image.asset(
                      'assets/icons/instagram.png',
                      width: 20,
                      height: 20,
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsetsDirectional.only(
                    start: 15, top: 13, bottom: 17),
                child: Container(
                  decoration: BoxDecoration(boxShadow: [
                    BoxShadow(
                        blurRadius: 4,
                        blurStyle: BlurStyle.outer,
                        color: Colors.grey.withOpacity(.3),
                        offset: const Offset(0, 3))
                  ], borderRadius: BorderRadius.circular(40)),
                  height: 40,
                  width: 40,
                  child: Center(
                    child: Image.asset(
                      'assets/icons/facebook.png',
                      width: 20,
                      height: 20,
                    ),
                  ),
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsetsDirectional.only(top: 6),
            child: SizedBox(
              height: 149,
              width: double.infinity,
              child: Image.asset('assets/images/brand_profile.png'),
            ),
          ),
          const Padding(
            padding: EdgeInsetsDirectional.only(start: 18, top: 28),
            child: Card(
              elevation: 0,
              child: Text(
                'Explore',
                style: TextStyle(
                  fontSize: 20,
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 11,
          ),
          InkWell(
            child: const ItemExplore(
              title: 'Collages',
              subTitle: ' 10 items',
            ),
            onTap: () {},
          ),
          const SizedBox(
            height: 10,
          ),
          InkWell(
            child: const ItemExplore(
              title: 'Products',
              subTitle: ' 40 items',
            ),
            onTap: () {},
          ),
          const SizedBox(
            height: 10,
          ),
          InkWell(
            child: const ItemExplore(
              title: 'Photos',
              subTitle: ' 20 items',
            ),
            onTap: () {},
          ),
          const SizedBox(
            height: 47,
          ),
        ],
      ),
    );
  }
}
