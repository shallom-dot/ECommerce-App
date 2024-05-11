import 'package:e_commerce_app/util/show_snack_bar.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';


 class FirebaseAuthMethods {
  final FirebaseAuth _auth;
FirebaseAuthMethods(this._auth);
//email signup
Future<void> signUpWithEmail({
  required String email,
  required String password,
  required BuildContext context,
}) async{
  try {
    await _auth.createUserWithEmailAndPassword(
      email: email,
      password: password,
    );
    await sendEmailVerification(context);
  } on FirebaseAuthException catch (e) {
      showSnackBar(context, e.message!);
  }
   
  }
  // email verifiction
  Future<void> sendEmailVerification(BuildContext context) async{
    try{
      _auth.currentUser!.sendEmailVerification();
      showSnackBar(context, 'Email verification sent!');
    }on FirebaseAuthException catch (e) {
      showSnackBar(context, e.message!);

    }
  }
}