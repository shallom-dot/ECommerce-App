import 'dart:async';
import 'package:e_commerce_app/screens/onboarding_screen.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

@override
  void initState() { 
    super.initState();
    Timer(const Duration(seconds: 3), () =>  
      Navigator.push(
        context, MaterialPageRoute(
          builder: (context) => OnboardingScreen(),))
    );
  }



  @override
  Widget build(BuildContext context) {
    return Material(
        child: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          decoration: const BoxDecoration(
            color: Colors.black,
            image: DecorationImage(
              image: AssetImage('assets/images/image2.jpg'),
              fit: BoxFit.cover,
              opacity: 0.4,
            )
          ),
      // ignore: prefer_const_constructors
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children:const [
           Icon(
            Icons.shopping_cart,
            size: 200,
            color: Color(0xFFDB3022),
          ),
          Text('DP SHOP',
          style: TextStyle(
            color: Colors.white,
            fontSize: 40,
            fontWeight: FontWeight.bold,
            fontStyle: FontStyle.italic,
          ),),
        ],
      )
    ));
  }
}