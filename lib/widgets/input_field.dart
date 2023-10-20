import 'package:flutter/material.dart';
import 'package:login_app/constants/colors.dart'; // Importación de un archivo de constantes de colores

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
              focusedBorder: const OutlineInputBorder(
                borderSide: BorderSide(color: primaryColor, width: 2.0),
              ),
              enabledBorder: const OutlineInputBorder(
                borderSide: BorderSide(color: disabledColor, width: 2.0),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
