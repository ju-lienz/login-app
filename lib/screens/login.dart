import 'package:flutter/material.dart'; // Importación de la librería de Flutter
import 'package:login_app/constants/colors.dart';
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
  bool isChecked = false;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Align(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 35.0),
            const MainText(
              text: 'Login',
            ),
            const SecondaryText(
                firstText: 'New in Julienz App?  ', // Primer fragmento de texto
                hyperlinkText:
                    'Create an acount', // Segundo fragmento de texto (hipervínculo)
                fontSize: 18),
            const SizedBox(height: 50.0),
            const InputField(
              hintText: 'Enter Email adress',
              inputName: 'Email',
            ),
            const InputField(
              hintText: 'Enter password',
              inputName: 'Password',
            ),
            Row(
              children: [
                Checkbox(
                    value: isChecked,
                    activeColor: primaryColor,
                    onChanged: (newbool) {
                      setState(() {
                        isChecked = newbool!;
                      });
                    }),
                const Text('Remember me'),
              ],
            ),
            const SizedBox(height: 30.0),
            const PrincipalButton(),
          ],
        ),
      ),
    );
  }
}
