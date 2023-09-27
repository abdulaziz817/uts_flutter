// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:uts/home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(fontFamily:  'Inter'),
      home: Home(),
    );
  }
}
