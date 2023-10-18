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
      title: const Text('Julienz app'),
      leading: IconButton(
        icon: const Icon(Icons.search), // Icono izquierdo
        onPressed: () {},
      ),
      actions: <Widget>[
        IconButton(
          icon: const Icon(Icons.menu_rounded), // Icono derecho
          onPressed: () {},
        ),
      ],
    );
  }
}
