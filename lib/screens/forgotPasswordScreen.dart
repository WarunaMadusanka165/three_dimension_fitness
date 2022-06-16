// ignore_for_file: unnecessary_import

import 'dart:ffi';

import 'package:email_validator/email_validator.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:three_dimension_fitness/screens/utils.dart';

class ForgotPassword extends StatefulWidget {
  const ForgotPassword({Key? key}) : super(key: key);

  @override
  State<ForgotPassword> createState() => _ForgotPasswordState();
}

class _ForgotPasswordState extends State<ForgotPassword> {
  final formKey = GlobalKey<FormState>();
  final emailController = TextEditingController();

  @override
  void dispose() {
    emailController.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Text("Reset Password"),
      ),
      body: SafeArea(
          child: Container(
        padding: EdgeInsets.symmetric(horizontal: 30),
        child: Center(
          child: SingleChildScrollView(
            child: Form(
              key: formKey,
              child: Column(
                children: [
                  Image(image: AssetImage('assets/logo.png')),
                  SizedBox(height: 5),
                  Text("Receive an email to\nreset your password",
                      textAlign: TextAlign.center,
                      style: TextStyle(fontSize: 24, color: Colors.white)),
                  SizedBox(height: 25),
                  TextFormField(
                    cursorColor: Colors.white,
                    style: const TextStyle(color: Colors.white),
                    decoration: InputDecoration(
                        contentPadding: EdgeInsets.only(top: 15, left: 15),
                        suffixIcon: Icon(
                          Icons.email,
                          color: const Color.fromRGBO(164, 164, 164, 1),
                        ),
                        filled: true,
                        hintStyle: const TextStyle(
                            color: Color.fromRGBO(164, 164, 164, 0.5)),
                        hintText: "Email",
                        fillColor: const Color.fromRGBO(20, 20, 20, 1)),
                    controller: emailController,
                    autovalidateMode: AutovalidateMode.onUserInteraction,
                    validator: (email) =>
                        email != null && !EmailValidator.validate(email)
                            ? 'Enter a valid email'
                            : null,
                  ),
                  SizedBox(height: 25),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      primary: Color.fromRGBO(255, 90, 6, 1),
                      onPrimary: Colors.black,
                    ),
                    child: Text(
                      'Reset Password',
                      style: TextStyle(color: Colors.white),
                    ),
                    onPressed: resetPassword,
                  ),
                  SizedBox(height: 10),
                ],
              ),
            ),
          ),
        ),
      )),

      // SingleChildScrollView(
      //   child: Padding(
      //       padding: EdgeInsets.all(16),
      //       child: Form(
      //           key: formKey,
      //           child: Column(
      //             // mainAxisAlignment: MainAxisAlignment.center,
      //             children: [
      //               Image(image: AssetImage('assets/logo.png')),
      //               SizedBox(height: 10),
      //               Text("Receive an email to\nreset your password",
      //                   textAlign: TextAlign.center,
      //                   style: TextStyle(fontSize: 24)),
      //               SizedBox(
      //                 height: 20,
      //               ),
      //               TextFormField(
      //                 cursorColor: Colors.white,
      //                 style: const TextStyle(color: Colors.white),
      //                 decoration: InputDecoration(
      //                     contentPadding: EdgeInsets.only(top: 15, left: 15),
      //                     suffixIcon: IconButton(
      //                       onPressed: () {},
      //                       icon: const Icon(Icons.email),
      //                       color: const Color.fromRGBO(164, 164, 164, 1),
      //                     ),
      //                     filled: true,
      //                     hintStyle: const TextStyle(
      //                         color: Color.fromRGBO(164, 164, 164, 0.5)),
      //                     hintText: "Email",
      //                     fillColor: const Color.fromRGBO(20, 20, 20, 1)),
      //                 controller: emailController,
      //                 textInputAction: TextInputAction.done,
      //                 autovalidateMode: AutovalidateMode.onUserInteraction,
      //                 validator: (email) =>
      //                     email != null && !EmailValidator.validate(email)
      //                         ? 'Enter a valid email'
      //                         : null,
      //               ),
      //               SizedBox(height: 20),
      //               ElevatedButton.icon(
      //                 style: ElevatedButton.styleFrom(),
      //                 icon: Icon(Icons.email_outlined),
      //                 label: Text("Reset Password",
      //                     style: TextStyle(fontSize: 24)),
      //           onPressed: resetPassword,
      //               )
      //             ],
      //           ))),
      // ),
    );
  }

  Future resetPassword() async {
    showDialog(
        context: context,
        barrierDismissible: false,
        builder: (context) => Center(child: CircularProgressIndicator()));
    try {
      await FirebaseAuth.instance
          .sendPasswordResetEmail(email: emailController.text.trim());
      Utils.showSnackBar("Password Reset Email Sent");
      Navigator.of(context).popUntil((route) => route.isFirst);
    } on FirebaseAuthException catch (e) {
      print(e);
      Utils.showSnackBar(e.message);
    }
    Navigator.of(context).pop();
  }
}
