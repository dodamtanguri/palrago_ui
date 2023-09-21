import 'package:flutter/material.dart';
import 'package:palrago_ui/feature/home.dart';


import 'package:palrago_ui/ui/styles/colors.dart';

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
        primaryColor: PlgColor.primary_ff1b9dd9,
        appBarTheme: const AppBarTheme(
          backgroundColor: PlgColor.white_ffffffff,
        ),
      ),
      home:  const Home(),
    );
  }
}
