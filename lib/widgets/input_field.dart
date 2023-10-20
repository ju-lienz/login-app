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
      padding: const EdgeInsets.symmetric(horizontal: 0, vertical: 16),
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
              filled: true,
              fillColor: greyColor,
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(15.0),
              ),
              hintText: hintText,
              focusedBorder: OutlineInputBorder(
                borderSide: const BorderSide(color: primaryColor, width: 2.0),
                borderRadius: BorderRadius.circular(15.0),
              ),
              enabledBorder: OutlineInputBorder(
                borderSide: const BorderSide(color: greyColor, width: 2.0),
                borderRadius: BorderRadius.circular(15.0),
              ),
            ),
          )
        ],
      ),
    );
  }
}
