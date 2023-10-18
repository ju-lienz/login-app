import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:login_app/constants/colors.dart';

class BuildBody extends StatefulWidget {
  const BuildBody({
    super.key,
  });

  @override
  State<BuildBody> createState() => _BuildBodyState();
}

class _BuildBodyState extends State<BuildBody> {
  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Align(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            MainText(
              text: 'Login',
            ),
            SecondaryText(
                firstText: 'New in Julienz App?',
                hyperlinkText: 'Create an account',
                fontSize: 20),
            SizedBox(height: 50.0),
            InputField(hintText: 'Ingrese el usuario'),
            InputField(hintText: 'Ingrese la contraseña'),
          ],
        ),
      ),
    );
  }
}

class InputField extends StatelessWidget {
  final String hintText;
  const InputField({
    super.key,
    required this.hintText,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 16),
      child: TextField(
        decoration: InputDecoration(
          border: const OutlineInputBorder(),
          hintText: hintText,
        ),
      ),
    );
  }
}

class MainText extends StatelessWidget {
  final String text;
  final double fontSize;

  const MainText({
    super.key,
    required this.text,
    this.fontSize = 20,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(40, 0, 0, 0),
      child: Text(
        text,
        style: TextStyle(fontSize: fontSize, fontFamily: 'Neue Power'),
      ),
    );
  }
}

class SecondaryText extends StatelessWidget {
  final String firstText;
  final String hyperlinkText;
  final double fontSize;

  const SecondaryText({
    super.key,
    required this.firstText,
    required this.hyperlinkText,
    this.fontSize = 20,
  });

  @override
  Widget build(BuildContext context) {
    return RichText(
      text: TextSpan(
        style: TextStyle(
          fontFamily: 'Neue Power',
          fontSize: fontSize,
          fontWeight: FontWeight.w400,
          color: blackColor,
        ),
        children: [
          TextSpan(text: firstText),
          TextSpan(
            text: hyperlinkText,
            style: const TextStyle(
              decoration: TextDecoration.underline,
              color: primaryColor, // Color del hipervínculo
            ),
            recognizer: TapGestureRecognizer()
              ..onTap = () {
                print('Haz clickeado en Register');
              },
          )
        ],
      ),
    );
  }
}
