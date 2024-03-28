
import 'package:flutter/material.dart';

class RecoveryScreen extends StatefulWidget {
  const RecoveryScreen({super.key});

  @override
  State<RecoveryScreen> createState() => _ForgotPasswordScreenState();
}

class _ForgotPasswordScreenState extends State<RecoveryScreen> {
 
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
                          border:  OutlineInputBorder(),
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
            // Navigator.push(context, MaterialPageRoute(builder: (context) => const RecoveryScreen()));
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