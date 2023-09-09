import 'package:flutter/material.dart';
import 'package:practica2/src/userData.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
        title: 'Practica 01', home: Center(child: DatosUsuarios()));
  }
}
