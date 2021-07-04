import 'package:flutter/material.dart';
import 'input_Page.dart';
import 'end_Page.dart';
void main() => runApp(BMICAlculator());

class BMICAlculator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(
        primaryColor: Color(0xFF0A0E21),
        scaffoldBackgroundColor: Color(0xFF0A0E21),
      ),
      initialRoute:'/',
      routes: {
        '/':(context)=>InputPage(),
        '/end':(context)=>EndPage(),
      },
    );
  }
}