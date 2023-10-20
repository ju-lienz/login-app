import 'package:flutter/material.dart';
import 'package:login_app/constants/colors.dart';

class PrincipalButton extends StatelessWidget {
  const PrincipalButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: primaryColor,
          elevation: 0,
          minimumSize: const Size(600, 50),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(
                15), // Bordes redondeados // Borde personalizado
          ),
        ),
        onPressed: () {},
        child: const Text(
          "Login",
          style: TextStyle(
              color: whiteColor,
              fontFamily: 'Neue Power',
              fontWeight: FontWeight.w600),
        ),
      ),
    );
  }
}
