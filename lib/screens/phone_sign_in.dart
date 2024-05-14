import 'package:e_commerce_app/services/firebase_auth_methods.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class PhoneSignInScreen extends StatefulWidget {
   PhoneSignInScreen({super.key});

  @override
  State<PhoneSignInScreen> createState() => _PhoneSignInScreenState();
}

class _PhoneSignInScreenState extends State<PhoneSignInScreen> {
   final TextEditingController phoneNumberController = TextEditingController();

  @override
  void dispose() { 
     super.dispose();
    phoneNumberController.dispose();
  }
  void phoneSignIn() {
    FirebaseAuthMethods(FirebaseAuth.instance).phoneSignIn(
      context, phoneNumberController.text);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SafeArea(child: Column(
        children: [
          TextFormField(
               controller : phoneNumberController,
               
                 decoration: const InputDecoration(
                          labelText: 'Enter Number',
                          border:  OutlineInputBorder(),
                          )
                        ),
                 const SizedBox(height: 50,),
                         ElevatedButton(onPressed: phoneSignIn,
                        
            // // Navigator.push(context, MaterialPageRoute(builder: (context) => const OTPVerificationScreen()));
           
             style:  ElevatedButton.styleFrom(
              minimumSize: const Size.fromHeight(55),
              backgroundColor: const Color(0xFFDB3022),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8)
              )
              
             ),
             child: const Text("Send Code",
              style: TextStyle(fontSize: 18, color: Colors.white),),
             ),]
      )),
    );
}}