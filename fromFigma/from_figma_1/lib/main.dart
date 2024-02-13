
import 'package:flutter/material.dart';
import 'package:from_figma_1/page/navigationHome.dart';


void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Úkoly',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: NavigationHome(), // Použijeme NavigationHome jako hlavní stránku
    );
  }
}