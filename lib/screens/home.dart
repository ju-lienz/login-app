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
    return Center(
      child: Align(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Login',
              style: TextStyle(fontSize: 43, fontFamily: 'Neue Power'),
            ),
            RichText(
              text: TextSpan(
                style: const TextStyle(
                  fontFamily: 'Neue Power',
                  fontSize: 20,
                  fontWeight: FontWeight.w400,
                  color: Colors.black,
                ),
                children: [
                  const TextSpan(text: 'New in Julienz App?  '),
                  TextSpan(
                    text: 'Register',
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
            ),
            const SizedBox(height: 50.0),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 8, vertical: 16),
              child: TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: 'Enter a search term',
                ),
              ),
            ),
            const SizedBox(height: 50.0),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 8, vertical: 16),
              child: TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: 'Enter a search term',
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
