import 'package:flutter/material.dart';

class MyAppBar extends StatelessWidget implements PreferredSizeWidget {
  const MyAppBar(
      {Key? key,
      required this.title,
      this.showFilter = true,
      this.showAlarm = false,
      this.bottom})
      : super(key: key);

  final String title;
  final bool showFilter;

  final bool showAlarm;
  final PreferredSizeWidget? bottom;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      leadingWidth: 63,
      bottom: bottom,
      leading: Padding(
        padding: const EdgeInsetsDirectional.only(start: 27),
        child: InkWell(
          child: Image.asset(
            'assets/icons/Arrow_Back.png',
            height: 18.61,
            width: 27.41,
          ),
          onTap: () {

          },
        ),
      ),
      title: Text(title),
      actions: [

        if (showFilter)
          Padding(
            padding: const EdgeInsetsDirectional.only(end: 29.0),
            child: InkWell(
              child: Image.asset(
                'assets/icons/filter.png',
                height: 20.8,
                width: 23.13,
              ),
              onTap: () {},
            ),
          ),

        if (showAlarm)
          Padding(
            padding: const EdgeInsetsDirectional.only(end: 29.0),
            child: InkWell(
              child: Image.asset(
                'assets/icons/alarm.png',
                height: 20.8,
                width: 23.13,
              ),
              onTap: () {},
            ),
          ),
      ],
    );
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize => Size.fromHeight( bottom!=null ? 120 : 72);
}
