import 'package:flutter/material.dart';

class ItemSettings extends StatelessWidget {
  const ItemSettings({
    Key? key,
    required this.title,
    required this.icon,
  }) : super(key: key);

  final String title;

  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsetsDirectional.only(start: 20, end: 19),
      child: Container(
        decoration: BoxDecoration(
          shape: BoxShape.rectangle,
          boxShadow: [
            BoxShadow(
                blurRadius: 10,
                color: Colors.grey.withOpacity(.3),
                offset: const Offset(0, 3),
                blurStyle: BlurStyle.outer)
          ],
          borderRadius: BorderRadius.circular(8),
        ),
        child: Row(
          children: [
            Padding(
                padding: const EdgeInsetsDirectional.only(
                  start: 23,
                  top: 18,
                  bottom: 18,
                ),
                child: Icon(
                  icon,
                  size: 35,
                )),
            Padding(
              padding: const EdgeInsetsDirectional.only(
                start: 25,
              ),
              child: Text(
                title,
                style: const TextStyle(fontSize: 16),
              ),
            ),
            const Spacer(),
            IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.chevron_right,
                size: 30,
                color: Color(0xff7B7B7B),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
