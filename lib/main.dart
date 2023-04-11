import 'package:flutter/material.dart';
import 'package:flutter_application_1/Ekran.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'OrtalaMatik-9174-Arda Samet Çakır',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.amber),
      home: const OrtalaMatik()
    );
  }              
}