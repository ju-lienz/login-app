import 'package:flutter/material.dart';
import 'package:login_app/constants/colors.dart';
import 'package:login_app/screens/login.dart';
import 'package:login_app/widgets/app_bar.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Julienz App',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Welcome'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  IconData? get infoIconData => null;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: BuildAppBar(
        leading: IconButton(
          icon: Icon(
            infoIconData,
            size: 38,
            color: blackColor,
          ),
          onPressed: () {},
        ),
        infoIconData: Icons.search_rounded,
      ),
      body: const Padding(
        padding: EdgeInsets.symmetric(horizontal: 18.0),
        child: BuildLoginScreen(),
      ),
    );
  }
}
