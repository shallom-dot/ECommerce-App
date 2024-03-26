import 'package:e_commerce_app/screens/splash_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp( MyApp());
}

class MyApp extends StatelessWidget {
   const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'E_Commerce Shopping',
      theme: ThemeData(
      primaryColor: Color(0xFFEF6969),
      ),
      home: SplashScreen(),
    );
  }
}


