import 'package:e_commerce_app/screens/login_screen.dart';
import 'package:e_commerce_app/screens/phone_sign_in.dart';
import 'package:e_commerce_app/screens/signup_screen.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
);
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
      home:  const LoginScreen(),
    );
  }
}


