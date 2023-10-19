import 'package:flutter/gestures.dart'; // Importación de la librería de gestos
import 'package:flutter/material.dart'; // Importación de la librería de Flutter
import 'package:login_app/constants/colors.dart'; // Importación de un archivo de constantes de colores

class BuildBody extends StatefulWidget {
  const BuildBody({
    // Constructor de la clase BuildBody
    super.key,
  });

  @override
  State<BuildBody> createState() =>
      _BuildBodyState(); // Método para crear el estado de BuildBody
}

class _BuildBodyState extends State<BuildBody> {
  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Align(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 35.0), // Espacio en blanco vertical
            MainText(
              text: 'Login',
            ),
            SecondaryText(
                firstText: 'New in Julienz App?', // Primer fragmento de texto
                hyperlinkText:
                    'Create an acount', // Segundo fragmento de texto (hipervínculo)
                fontSize: 18), // Tamaño de fuente
            SizedBox(height: 50.0), // Espacio en blanco vertical
            InputField(
              hintText: 'Enter Email adres',
              inputName: 'Email',
            ),
            InputField(
              hintText: 'Enter password',
              inputName: 'Paswor',
            )
          ],
        ),
      ),
    );
  }
}

class InputField extends StatelessWidget {
  final String hintText; // Texto de sugerencia para el campo de entrada
  final String inputName; // Texto nombre del input
  const InputField({
    super.key,
    required this.hintText,
    required this.inputName,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
          horizontal: 8, vertical: 16), // Espaciado horizontal y vertical
      child: Column(
        children: [
          Align(
            alignment: Alignment.bottomLeft,
            child: Text(
              inputName,
              style: const TextStyle(
                  fontFamily: 'Neue Power', fontWeight: FontWeight.w600),
            ),
          ),
          TextField(
            decoration: InputDecoration(
              border: const OutlineInputBorder(),
              hintText: hintText,
            ),
          ),
        ],
      ),
    );
  }
}

class MainText extends StatelessWidget {
  final String text; // Texto a mostrar
  final double fontSize; // Tamaño de fuente

  const MainText({
    super.key,
    required this.text,
    this.fontSize = 32,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:
          const EdgeInsets.fromLTRB(16, 0, 0, 8), // Espaciado personalizado
      child: Text(
        text,
        style: TextStyle(
            // Estilo del texto
            fontSize: fontSize, // Tamaño de fuente
            fontFamily: 'Neue Power', // Fuente
            fontWeight: FontWeight.w600), // Peso de la fuente
      ),
    );
  }
}

class SecondaryText extends StatelessWidget {
  final String firstText; // Primer fragmento de texto
  final String hyperlinkText; // Segundo fragmento de texto (hipervínculo)
  final double fontSize; // Tamaño de fuente

  const SecondaryText({
    super.key,
    required this.firstText,
    required this.hyperlinkText,
    this.fontSize = 20,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(16, 0, 0, 0),
      child: RichText(
        text: TextSpan(
          style: TextStyle(
            fontFamily: 'Neue Power', // Fuente
            fontSize: fontSize, // Tamaño de fuente
            fontWeight: FontWeight.w400, // Peso de la fuente
            color: blackColor, // Color del texto
          ),
          children: [
            TextSpan(text: firstText), // Primer fragmento de texto
            TextSpan(
              text: hyperlinkText, // Segundo fragmento de texto (hipervínculo)
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
    );
  }
}
