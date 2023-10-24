import 'package:flutter/material.dart';
import 'package:login_app/constants/colors.dart';
import 'package:login_app/main.dart';

class BuildAppBar extends StatelessWidget implements PreferredSizeWidget {
  final IconData infoIconData;

  const BuildAppBar({
    Key? key,
    required IconButton leading,
    required this.infoIconData,
  }) : super(key: key);

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: whiteColor,
      leading: IconButton(
          icon: Icon(infoIconData, size: 38),
          onPressed: () {
            Navigator.pushReplacement(
              context,
              MaterialPageRoute(
                  builder: (context) => const MyHomePage(title: "MyHomePage")),
            );
          }),
      actions: <Widget>[
        IconButton(
          icon: const Icon(
            Icons.menu_rounded,
            size: 38,
            color: blackColor,
          ),
          onPressed: () {},
        ),
      ],
    );
  }
}
