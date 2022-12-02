import 'package:flutter/material.dart';

class ItemProfile extends StatelessWidget {
  const ItemProfile({Key? key, required this.title, required this.subTitle})
      : super(key: key);
  final String title;
  final String subTitle;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Padding(
          padding: const EdgeInsetsDirectional.only(start: 18, end: 23),
          child: Container(
            height: 100,
            width: 100,
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(6), bottomLeft: Radius.circular(6)),
              color: Color(0xffEEEEEE),
            ),
          ),
        ),
        Column(
          children: [
            Text(
              "$title ",
              style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
            ),
            Padding(
              padding: const EdgeInsetsDirectional.only(
                top: 4,
              ),
              child: Text(
                "$subTitle ",
                style: const TextStyle(fontSize: 13),
              ),
            ),
          ],
        ),
        const Spacer(),
        Padding(
          padding:
              const EdgeInsetsDirectional.only(top: 35, end: 30, bottom: 35),
          child: SizedBox(
            height: 30,
            width: 30,
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
    );
  }
}
