import 'package:e_commerce_app/screens/otp_screen.dart';
import 'package:e_commerce_app/screens/recovery_screen.dart';
import 'package:flutter/material.dart';

class ForgotPasswordScreen extends StatefulWidget {
  const ForgotPasswordScreen({super.key});

  @override
  State<ForgotPasswordScreen> createState() => _ForgotPasswordScreenState();
}

class _ForgotPasswordScreenState extends State<ForgotPasswordScreen> {
 
  bool clrButton = false;

  TextEditingController  emailController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        foregroundColor: Colors.black,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding:  const EdgeInsets.symmetric(horizontal: 15),
          child: Column(
           // crossAxisAlignment: CrossAxisAlignment.start,
            children: [
          const SizedBox(height: 10),
              const Align(
              alignment: Alignment.topLeft,
             child: Text('Forgot Password' ,
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
              ),),),
               const SizedBox(height: 60),
               const Text('Please enter your email addresss. You will receive a link to create or set a new password via email' ,
              style: TextStyle(
                fontSize: 15,
              ),),
            const SizedBox(height: 15,),
              TextFormField(
                 controller : emailController,
                onChanged: (value) {
                  if (value != "") {
                    setState(() {
                      clrButton = true;
                    });
                  }
                },
                 decoration: InputDecoration(
                          labelText: 'Email',
                          border:  const OutlineInputBorder(),
                          suffix: InkWell(
                            onTap: () {
                              setState(() {
                             emailController.clear();                              });
                            },
                            child: const Icon(Icons.cancel,
                            color: Color(0xFFDB3022),))
                        ),
                      ),
                  const SizedBox(height: 50,),
                       ElevatedButton(onPressed: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) => const RecoveryScreen()));
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


                Column(
                  children: [
                    
              const SizedBox(height: 20,),
                    const Text("OR",
                    style: TextStyle(
                      color: Colors.black54,
                      fontSize: 15,
                    )
                    ),
                    TextButton(onPressed: () {
                 Navigator.push(context, MaterialPageRoute(builder: (context) => const OTPScreen()));
               },
                child: const Text('Verify Using Number',
                 style: TextStyle(
                  color: Color(0xFFDB3022),
                  fontSize: 16,
                  fontWeight: FontWeight.w600),
                 )),
                  ],
                ),
               
            ],
          ),
        ),
      ),
    );
  }
}