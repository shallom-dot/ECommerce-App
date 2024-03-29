import 'package:e_commerce_app/screens/recovery_screen.dart';
import 'package:flutter/material.dart';
import 'package:sms_otp_auto_verify/sms_otp_auto_verify.dart';

class OTPVerificationScreen extends StatefulWidget {
  const OTPVerificationScreen({super.key});

  @override
  State<OTPVerificationScreen> createState() => _OTPVerificationScreenState();
}

class _OTPVerificationScreenState extends State<OTPVerificationScreen> {

 BoxDecoration get _pinPutDecoration {
    return BoxDecoration(
      border: Border.all(color: Theme.of(context).primaryColor),
      borderRadius: BorderRadius.circular(15.0),
    );
  }

TextEditingController textEditingController = new TextEditingController(text: "");

  // /// get signature code
  // _getSignatureCode() async {
  //   String? signature = await SmsVerification.getAppSignature();
  //   print("signature $signature");
  // }

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
            children: [
              const SizedBox(height: 10,),
              const Align(
                alignment: Alignment.topLeft,
                child: Text('Enter OTP Code' ,
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold
                ),),
              ),

          const SizedBox(height: 100,),
            const Text('Please enter the OTP code we have sent to your number to verify',
              style: TextStyle(
                fontSize: 15,
              ),),
               const SizedBox(height: 30,),
              TextFieldPin(
    textController: textEditingController,
    autoFocus: true,
    codeLength: 4,
    alignment: MainAxisAlignment.center,
    defaultBoxSize: 46.0,
    margin: 10,
    selectedBoxSize: 46.0,
    textStyle: const TextStyle(fontSize: 16),
    defaultDecoration: _pinPutDecoration.copyWith(
    border: Border.all(
    color: Theme.of(context)
    .primaryColor
        .withOpacity(0.6))),
    selectedDecoration: _pinPutDecoration,
    onChange: (code) {
      setState(() {
        
      });
    // _onOtpCallBack(code,false);
}),

         const SizedBox(height: 20,),
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
             child: const Text("Verify",
              style: TextStyle(fontSize: 18, color: Colors.white),),
             ),

            ],
          ),
        ),
      ),
    );
  }
}