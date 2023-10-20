import 'package:flutter/material.dart'; // Importación de la librería de Flutter
import 'package:login_app/widgets/input_field.dart';
import 'package:login_app/widgets/main_text.dart';
import 'package:login_app/widgets/principal_button.dart';
import 'package:login_app/widgets/secondary_text.dart';

class BuildBody extends StatefulWidget {
  const BuildBody({
    // Constructor de la clase BuildBody
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
            SizedBox(height: 35.0),
            MainText(
              text: 'Login',
            ),
            SecondaryText(
                firstText: 'New in Julienz App?', // Primer fragmento de texto
                hyperlinkText:
                    'Create an acount', // Segundo fragmento de texto (hipervínculo)
                fontSize: 18),
            SizedBox(height: 50.0),
            InputField(
              hintText: 'Enter Email adress',
              inputName: 'Email',
            ),
            InputField(
              hintText: 'Enter password',
              inputName: 'Password',
            ),
            SizedBox(height: 60.0),
            PrincipalButton(),
          ],
        ),
      ),
    );
  }
}
