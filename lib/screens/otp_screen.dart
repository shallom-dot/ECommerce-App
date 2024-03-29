import 'package:e_commerce_app/screens/otp_verification_screen.dart';
import 'package:flutter/material.dart';

class OTPScreen extends StatelessWidget {
  const OTPScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        foregroundColor: Colors.black,
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25),
          child: Column(
            children: [
              const SizedBox(
                height: 10,
              ),
              const Align(
                alignment: Alignment.topLeft,
                child: Text(
                  'Forgot Password',
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            const SizedBox(height: 60),
               const Text('Please enter your Number. You will receive an OTP code to create or set a new paasword via number',
              style: TextStyle(
                fontSize: 15,
              ),),
               const SizedBox(height: 15,),
              TextFormField(
                // controller : emailController,
               
                 decoration: const InputDecoration(
                          labelText: 'Enter Number',
                          border:  OutlineInputBorder(),
                          )
                        ),
                 const SizedBox(height: 50,),
                         ElevatedButton(onPressed: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) => const OTPVerificationScreen()));
            },
             style:  ElevatedButton.styleFrom(
              minimumSize: const Size.fromHeight(55),
              backgroundColor: const Color(0xFFDB3022),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8)
              )
              
             ),
             child: const Text("Send Code",
              style: TextStyle(fontSize: 18, color: Colors.white),),
             ),

            ],
          ),
        ),
      ),
    );
  }
}