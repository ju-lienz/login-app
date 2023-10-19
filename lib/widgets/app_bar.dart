import 'package:flutter/material.dart';
import 'package:login_app/constants/colors.dart';

class BuildAppBar extends StatelessWidget implements PreferredSizeWidget {
  const BuildAppBar({Key? key}) : super(key: key);

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: whiteColor,
      leading: IconButton(
        icon: const Icon(Icons.search, size: 38),
        // Icono izquierdo
        onPressed: () {},
      ),
      actions: <Widget>[
        IconButton(
          icon: const Icon(Icons.menu_rounded, size: 38), // Icono derecho
          onPressed: () {},
        ),
      ],
    );
  }
}
