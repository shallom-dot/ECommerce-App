import 'package:e_commerce_app/screens/forgot_password_screen.dart';
import 'package:e_commerce_app/screens/signup_screen.dart';
import 'package:e_commerce_app/screens/splash_screen.dart';
import 'package:e_commerce_app/services/firebase_auth_methods.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:google_sign_in_android/google_sign_in_android.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  @override
  void dispose() {
    super.dispose();
    emailController.dispose();
    passwordController.dispose();
  }
void loginUser() {
  FirebaseAuthMethods(FirebaseAuth.instance).loginWithEmail(
    email: emailController.text ,
    password: passwordController.text,
     context: context);

}



  @override
  Widget build(BuildContext context) {
    return Material(
      child: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const SizedBox(height: 110,),
              Image.asset('assets/images/freed.png'),
              const SizedBox(height: 50,),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25),
                child: Column(
                  children: [
                    TextFormField(
                      decoration: const InputDecoration(
                        labelText: 'Enter Email',
                        border: OutlineInputBorder(),
                        prefixIcon: Icon(Icons.email),
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
                     Align(alignment: Alignment.bottomRight,
                      child: TextButton(onPressed: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context) => const ForgotPasswordScreen()));
                      },
                child: const Text('Forgot Password?',
                 style: TextStyle(
                  color: Color(0xFFDB3022),
                  fontSize: 16,
                  fontWeight: FontWeight.w600),
                 )),),
                    const SizedBox(height: 40),
                     ElevatedButton(onPressed: loginUser,
             style:  ElevatedButton.styleFrom(
              minimumSize: const Size.fromHeight(55),
              backgroundColor: const Color(0xFFDB3022),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8)
              )
              
             ),
             child: const Text("Log In",
              style: TextStyle(fontSize: 18, color: Colors.white),),
             ),
        
             const SizedBox(height: 15),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text("Don't Have an Account? ",
                style: TextStyle(
                  color: Colors.black54,
                  fontSize: 15,
                )
                ),
               TextButton(onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => const SignUpScreen()));
               },
                child: const Text('Sign Up',
                 style: TextStyle(
                  color: Color(0xFFDB3022),
                  fontSize: 16,
                  fontWeight: FontWeight.w600),
                 )),
              ],
            ),
             const SizedBox(height: 10),
                     ElevatedButton(onPressed:
              () => FirebaseAuthMethods(FirebaseAuth.instance).signInWithGoogle(context),
             style:  ElevatedButton.styleFrom(
             minimumSize: const Size.fromHeight(55),
              backgroundColor: const Color(0xFFDB3022),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8),
                
              )
              
             ),
              child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Image.asset(
                  width: 20,
                  height: 20,
                  'assets/images/icons8-google-48.png'
                ),
               const SizedBox(width: 20),
                const Text('Sign in with Google',
                style: const TextStyle(fontSize: 18, color: Colors.white),),
              ],
            ),
             ),
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