import 'package:flutter/material.dart';
import './screens/index.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Ecommerce UI',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Color(0xFF000000),
        accentColor: Color(0xFFF1F1F1),
        scaffoldBackgroundColor: Color(0xFFF1F1F1),
      ),
      home: MainScreen(),
    );
  }
}
