
import 'package:flutter/material.dart';
import 'screens/cartelera_screen.dart';

void main() {
  runApp(const CarteleraApp());
}

class CarteleraApp extends StatelessWidget {
  const CarteleraApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Mi Cartelera',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
        fontFamily: 'Montserrat',
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: const CarteleraScreen(),
    );
  }
}