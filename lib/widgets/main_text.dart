import 'package:flutter/widgets.dart';

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
