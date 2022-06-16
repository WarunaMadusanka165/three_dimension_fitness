import 'package:email_validator/email_validator.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:three_dimension_fitness/main.dart';
import 'package:three_dimension_fitness/screens/forgotPasswordScreen.dart';
import 'package:three_dimension_fitness/signUp.dart';

class LoginPage extends StatefulWidget {
  final VoidCallback onClickedSignUp;

  const LoginPage({Key? key, required this.onClickedSignUp}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  var obscureText = true;
  final formKey = GlobalKey<FormState>();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  void checkValues() {
    String email = emailController.text.trim();
    String password = passwordController.text.trim();

    if (email == "" || password == "") {
      // showDialog<String>(
      //   context: context,
      //   builder: (BuildContext context) => AlertDialog(
      //     title: const Text('AlertDialog Title'),
      //     content: const Text('AlertDialog description'),
      //     actions: <Widget>[
      //       TextButton(
      //         onPressed: () => Navigator.pop(context, 'Cancel'),
      //         child: const Text('Cancel'),
      //       ),
      //       TextButton(
      //         onPressed: () => Navigator.pop(context, 'OK'),
      //         child: const Text('OK'),
      //       ),
      //     ],
      //   ),
      // );
      print("Please fill the fields");
    } else {
      signIn();
    }
  }

  @override
  void dispose() {
    emailController.dispose();
    passwordController.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
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
                  SizedBox(height: 15),
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
                  SizedBox(height: 15),
                  TextFormField(
                    cursorColor: Colors.white,
                    style: const TextStyle(color: Colors.white),
                    decoration: InputDecoration(
                        contentPadding: EdgeInsets.only(top: 15, left: 15),
                        suffixIcon: GestureDetector(
                            onTap: () {
                              setState(() {
                                obscureText = !obscureText;
                              });
                            },
                            child: obscureText
                                ? const Icon(Icons.visibility_off,
                                    color:
                                        const Color.fromRGBO(164, 164, 164, 1))
                                : const Icon(Icons.visibility,
                                    color: const Color.fromRGBO(
                                        164, 164, 164, 1))),
                        filled: true,
                        hintStyle: const TextStyle(
                            color: Color.fromRGBO(164, 164, 164, 0.5)),
                        hintText: "Password",
                        fillColor: const Color.fromRGBO(20, 20, 20, 1)),
                    autovalidateMode: AutovalidateMode.onUserInteraction,
                    validator: (value) => value != null && value.length < 6
                        ? 'Enter min 6 characters'
                        : null,
                    controller: passwordController,
                    obscureText: obscureText,
                  ),
                  SizedBox(height: 20),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        primary: Color.fromRGBO(255, 90, 6, 1),
                        onPrimary: Colors.black,
                        minimumSize: Size(200, 50)),
                    child: Text(
                      'Log In',
                      style: TextStyle(color: Colors.white),
                    ),
                    onPressed: signIn,
                  ),
                  SizedBox(height: 10),
                  GestureDetector(
                    child: Text(
                      'Forgot Password?',
                      style: TextStyle(
                          decoration: TextDecoration.underline,
                          color: Color.fromRGBO(255, 90, 6, 1),
                          fontSize: 18),
                    ),
                    onTap: () => Navigator.push<void>(
                      context,
                      MaterialPageRoute<void>(
                        builder: (BuildContext context) =>
                            const ForgotPassword(),
                      ),
                    ),
                  ),
                  SizedBox(height: 30),
                  RichText(
                      text: TextSpan(
                          text: "No account?  ",
                          style: TextStyle(color: Colors.white, fontSize: 18),
                          children: [
                        TextSpan(
                            recognizer: TapGestureRecognizer()
                              ..onTap = widget.onClickedSignUp,
                            text: 'Sign Up',
                            style: TextStyle(
                                fontSize: 18,
                                decoration: TextDecoration.underline,
                                color: Color.fromRGBO(255, 90, 6, 1)))
                      ]))
                ],
              ),
            ),
          ),
        ),
      )),
      // bottomNavigationBar: Container(
      //     child: RichText(
      //         text: TextSpan(
      //             recognizer: TapGestureRecognizer()
      //               ..onTap = widget.onClickedSignUp,
      //             text: "Sign up",
      //             style: TextStyle(
      //                 decoration: TextDecoration.underline,
      //                 color: Theme.of(context).colorScheme.secondary)))

      //     // Row(
      //     //   mainAxisAlignment: MainAxisAlignment.center,
      //     //   children: [
      //     //     Text(
      //     //       "Don't have an account?",
      //     //       style: TextStyle(fontSize: 16),
      //     //     ),
      //     //     CupertinoButton(
      //     //         child: Text("Sign Up", style: TextStyle(fontSize: 16)),
      //     //         onPressed: () {
      //     //           Navigator.push(
      //     //             context,
      //     //             MaterialPageRoute(builder: (context) => SignUp()),
      //     //           );
      //     //         })
      //     //   ],
      //     // ),
      //     ),
    );
  }

  Future signIn() async {
    final isValid = formKey.currentState!.validate();
    if (!isValid) return;

    showDialog(
        context: context,
        barrierDismissible: false,
        builder: (context) => Center(child: CircularProgressIndicator()));

    try {
      await FirebaseAuth.instance.signInWithEmailAndPassword(
          email: emailController.text.trim(),
          password: passwordController.text.trim());
    } on FirebaseAuthException catch (e) {
      ScaffoldMessenger.of(context)
          .showSnackBar(SnackBar(content: Text(e.message.toString())));
      print(e);
    }

    navigatorKey.currentState!.popUntil((route) => route.isFirst);
  }
}
