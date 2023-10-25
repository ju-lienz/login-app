import 'package:flutter/material.dart';
import 'package:login_app/widgets/app_bar.dart';
import 'package:login_app/widgets/main_text.dart';
import 'package:login_app/widgets/secondary_text.dart';

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

  IconData? get infoIconData => null;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: BuildAppBar(
        leading: IconButton(
          icon: Icon(infoIconData, size: 38),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        infoIconData: Icons.arrow_back_rounded,
      ),
      body: const Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 35.0),
          SecondaryText(
            firstText: 'Welcome back  ',
            hyperlinkText: 'Julieta',
            isLinked: false,
          ),
          MainText(text: 'Dashboard'),
        ],
      ),
    );
  }
}
