import 'package:flutter/material.dart'; // Importación de la librería de Flutter
import 'package:login_app/widgets/input_field.dart';
import 'package:login_app/widgets/main_text.dart';
import 'package:login_app/widgets/secondary_text.dart';

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
              hintText: 'Enter Email adress',
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



// TextField(
//   decoration: InputDecoration(
//     labelText: 'Usuario', // Etiqueta del campo
//     hintText: 'Ingrese el usuario', // Texto de sugerencia dentro del campo
//     prefixIcon: Icon(Icons.person), // Icono antes del campo
//     suffixIcon: Icon(Icons.check), // Icono después del campo
//     enabledBorder: OutlineInputBorder( // Borde cuando el campo está habilitado
//       borderSide: BorderSide(color: Colors.blue, width: 2.0),
//     ),
//     focusedBorder: OutlineInputBorder( // Borde cuando el campo está enfocado
//       borderSide: BorderSide(color: Colors.green, width: 2.0),
//     ),
//     labelStyle: TextStyle(color: Colors.blue), // Estilo de la etiqueta
//     hintStyle: TextStyle(color: Colors.grey), // Estilo del texto de sugerencia
//     prefixStyle: TextStyle(color: Colors.blue), // Estilo del icono antes del campo
//     suffixStyle: TextStyle(color: Colors.green), // Estilo del icono después del campo
//   ),
// )