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
      padding: const EdgeInsets.fromLTRB(0, 5, 0, 0),
      child: Text(
        text,
        style: TextStyle(
          fontSize: fontSize,
          fontFamily: 'Neue Power',
          fontWeight: FontWeight.w600,
        ),
      ),
    );
  }
}
