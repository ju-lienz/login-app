import 'package:flutter/gestures.dart'; // Importación de la librería de gestos
import 'package:flutter/material.dart';
import 'package:login_app/constants/colors.dart'; // Importación de un archivo de constantes de colores

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
