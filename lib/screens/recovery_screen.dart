
import 'package:flutter/material.dart';

class RecoveryScreen extends StatefulWidget {
  const RecoveryScreen({super.key});

  @override
  State<RecoveryScreen> createState() => _ForgotPasswordScreenState();
}

class _ForgotPasswordScreenState extends State<RecoveryScreen> {

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
          padding: const EdgeInsets.symmetric(horizontal: 15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 10),
              const Text('Forgot Password' ,
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
              ),),
              const SizedBox(height: 60),
              TextFormField(
                 decoration: const InputDecoration(
                          labelText: 'Reset Code',
                          border:  OutlineInputBorder(),
                            prefixIcon: Icon(Icons.numbers),
                        ),
                      ),

  const SizedBox(height: 20,),
              TextFormField(
                 decoration: const InputDecoration(
                          labelText: 'New Paaword',
                          border:  OutlineInputBorder(),
                          prefixIcon: Icon(Icons.lock),
                        suffixIcon: Icon(Icons.remove_red_eye),
                        ),
                      ),

                        const SizedBox(height: 20,),
              TextFormField(
                 decoration: const InputDecoration(
                          labelText: 'Confirm new password',
                          border:  OutlineInputBorder(),
                          prefixIcon: Icon(Icons.lock),
                        suffixIcon: Icon(Icons.remove_red_eye),
                          
                  )
                        ),
             const SizedBox(height: 20,),

                       ElevatedButton(onPressed: () {
            // Navigator.push(context, MaterialPageRoute(builder: (context) => const RecoveryScreen()));
            },
             style:  ElevatedButton.styleFrom(
              minimumSize: const Size.fromHeight(55),
              backgroundColor: const Color(0xFFDB3022),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8)
              )
              
             ),
             child: const Text("Reset Password",
              style: TextStyle(fontSize: 18, color: Colors.white),),
             ),
            
         ] ),
        ),
      ),
    );
  }
}