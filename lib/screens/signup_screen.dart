import 'package:e_commerce_app/screens/login_screen.dart';
import 'package:e_commerce_app/screens/navigation_screen.dart';
import 'package:flutter/material.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
      child: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const SizedBox(height: 50,),
              Image.asset('assets/images/freed.png'),
              const SizedBox(height: 20,),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25),
                child: Column( 
                  children: [
                    TextFormField(
                      decoration: const InputDecoration(
                        labelText: 'Enter Name',
                        border: OutlineInputBorder(),
                        prefixIcon: Icon(Icons.person),
                      ),
                    ),
                    const SizedBox(height: 15),
                    TextFormField(
                      decoration: const InputDecoration(
                        labelText: 'Enter Email',
                        border: OutlineInputBorder(),
                        prefixIcon: Icon(Icons.email),
                      ),
                    ),
                     const SizedBox(height: 15),
                    TextFormField(
                      decoration: const InputDecoration(
                        labelText: 'Enter Number',
                        border: OutlineInputBorder(),
                        prefixIcon: Icon(Icons.numbers),
                      ),
                    ),
                    const SizedBox(height: 15,),
                    TextFormField(
                      obscureText: true,
                      decoration: const InputDecoration(
                        labelText: 'Enter Password',
                        border: OutlineInputBorder(),
                        prefixIcon: Icon(Icons.lock),
                        suffixIcon: Icon(Icons.remove_red_eye),
                      ),                  
                    ),
                     const SizedBox(height: 15,),
                    TextFormField(
                      obscureText: true,
                      decoration: const InputDecoration(
                        labelText: 'Confirm Password',
                        border: OutlineInputBorder(),
                        prefixIcon: Icon(Icons.lock),
                        suffixIcon: Icon(Icons.remove_red_eye),
                      ),                  
                    ),
                     
                    const SizedBox(height: 40),
                     ElevatedButton(onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => const NavigationScreen()));
            },
             style:  ElevatedButton.styleFrom(
              minimumSize: const Size.fromHeight(55),
              backgroundColor: const Color(0xFFDB3022),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8)
              )
              
             ),
             child: const Text("Create Account",
              style: TextStyle(fontSize: 18, color: Colors.white),),
             ),

             const SizedBox(height: 15),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text("Already Have an Account? ",
                style: TextStyle(
                  color: Colors.black54,
                  fontSize: 15,
                )
                ),
               TextButton(onPressed: () {
                Navigator.push(context, 
                MaterialPageRoute(builder: (context) => const LoginScreen()));
               },
                child: const Text('Log In',
                 style: TextStyle(
                  color: Color(0xFFDB3022),
                  fontSize: 16,
                  fontWeight: FontWeight.w600),
                 )),
              ],
            )
                  ],
                ),
              ),
            ],
          )
          ),
      ),
    );
  }
}