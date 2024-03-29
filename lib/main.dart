import 'package:e_commerce_app/screens/navigation_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp( const MyApp());
}

class MyApp extends StatelessWidget {
   const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'E_Commerce Shopping',
      theme: ThemeData(
      primaryColor: const Color(0xFFDB3022),
      ),
      home: const NavigationScreen(),
    );
  }
}


