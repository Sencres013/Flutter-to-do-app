import 'package:flutter/material.dart';
import "package:flutter/services.dart";
import "package:todoapp/data/colors.dart";
import "./views/home.dart";

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: bgColor,
      ),
      home: Home(),
    );
  }
}
