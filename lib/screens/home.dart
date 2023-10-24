import 'package:flutter/material.dart';
import 'package:login_app/widgets/app_bar.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: BuildAppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_rounded, size: 38),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        infoIconData: Icons.arrow_back_rounded,
      ),
      body: const Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            SizedBox(height: 20),
            Text(
              '¡Bienvenido a mi aplicación Flutter!',
              style: TextStyle(fontSize: 18),
            ),
            SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}
