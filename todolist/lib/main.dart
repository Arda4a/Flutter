import 'package:flutter/material.dart';
import 'todolist.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: '9174-Arda',
      theme: ThemeData(primarySwatch: Colors.red),
     home: const Todolist(),
    );
  }
}
