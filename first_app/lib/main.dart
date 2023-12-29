import 'package:first_app/src/app.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    title: 'First App',
    theme: ThemeData(
      useMaterial3: true,
      colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),
    ),
    home: const MyApp(),
    debugShowCheckedModeBanner: false,
  ));
}
