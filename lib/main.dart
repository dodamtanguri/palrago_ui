import 'package:flutter/material.dart';

void main() {
  runApp(const PalragoUI());
}

class PalragoUI extends StatelessWidget {
  const PalragoUI({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Palrago-UI',
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.white,
        primaryColor: const Color(0xff1b9dd9),
        appBarTheme: const AppBarTheme(),
      ),
    );
  }
}

