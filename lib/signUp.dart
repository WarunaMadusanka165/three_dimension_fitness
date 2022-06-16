import 'package:email_validator/email_validator.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:provider/provider.dart';
import 'package:three_dimension_fitness/main.dart';
import 'package:three_dimension_fitness/screens/utils.dart';

class SignUp extends StatefulWidget {
  final VoidCallback onClickedSignIn;
  const SignUp({Key? key, required this.onClickedSignIn}) : super(key: key);

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  var obscureText = true;
  var obscureText2 = true;

  final formKey = GlobalKey<FormState>();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController cPasswordController = TextEditingController();

  void checkValues() {
    String email = emailController.text.trim();
    String password = passwordController.text.trim();
    String cPassword = cPasswordController.text.trim();

    if (email == "" || password == "" || cPassword == "") {
      print("Please fill the fields");
    } else if (password != cPassword) {
      print("Password do not match!");
    } else {
      signUp();
    }
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
                  SizedBox(height: 15),
                  TextFormField(
                    cursorColor: Colors.white,
                    style: const TextStyle(color: Colors.white),
                    decoration: InputDecoration(
                        contentPadding: EdgeInsets.only(top: 15, left: 15),
                        suffixIcon: GestureDetector(
                            onTap: () {
                              setState(() {
                                obscureText2 = !obscureText2;
                              });
                            },
                            child: obscureText2
                                ? const Icon(Icons.visibility_off,
                                    color:
                                        const Color.fromRGBO(164, 164, 164, 1))
                                : const Icon(Icons.visibility,
                                    color: const Color.fromRGBO(
                                        164, 164, 164, 1))),
                        filled: true,
                        hintStyle: const TextStyle(
                            color: Color.fromRGBO(164, 164, 164, 0.5)),
                        hintText: "Confirm Password",
                        fillColor: const Color.fromRGBO(20, 20, 20, 1)),
                    controller: cPasswordController,
                    autovalidateMode: AutovalidateMode.onUserInteraction,
                    validator: (value) {
                      if (value != null && value.length < 6) {
                        return 'Enter min 6 characters';
                      } else if (passwordController.text.trim() !=
                          cPasswordController.text.trim()) {
                        return 'Password do not match!';
                      } else {
                        null;
                      }
                    },

                    //  => value != null && value.length < 6
                    //     ? 'Enter min 6 characters'
                    //     : null,
                    obscureText: obscureText2,
                  ),
                  SizedBox(height: 30),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        primary: Color.fromRGBO(255, 90, 6, 1),
                        onPrimary: Colors.black,
                        minimumSize: Size(200, 50)),
                    child: Text(
                      'Sign Up',
                      style: TextStyle(color: Colors.white),
                    ),
                    onPressed: signUp,
                  ),
                  SizedBox(height: 10),
                  ElevatedButton.icon(
                      style: ElevatedButton.styleFrom(
                          primary: Color.fromRGBO(255, 90, 6, 1),
                          onPrimary: Colors.black,
                          minimumSize: Size(200, 50)),
                      icon: FaIcon(
                        FontAwesomeIcons.google,
                        color: Colors.blue,
                      ),
                      label: Text(
                        "Sign up with Google",
                        style: TextStyle(color: Colors.white),
                      ),
                      onPressed: () {
                        final provider = Provider.of<GoogleSignInProvider>(
                            context,
                            listen: false);
                        provider.googleLogin();
                      }),
                  SizedBox(height: 10),
                  RichText(
                      text: TextSpan(
                          text: "Already have an account?  ",
                          style: TextStyle(color: Colors.white, fontSize: 18),
                          children: [
                        TextSpan(
                            recognizer: TapGestureRecognizer()
                              ..onTap = widget.onClickedSignIn,
                            text: 'Sign In',
                            style: TextStyle(
                                fontSize: 18,
                                decoration: TextDecoration.underline,
                                color: Color.fromRGBO(255, 90, 6, 1)))
                      ])),
                ],
              ),
            ),
          ),
        ),
      )),
    );
  }

  Future signUp() async {
    final isValid = formKey.currentState!.validate();
    if (!isValid) return;

    showDialog(
        context: context,
        barrierDismissible: false,
        builder: (context) => Center(child: CircularProgressIndicator()));
    try {
      await FirebaseAuth.instance.createUserWithEmailAndPassword(
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

class GoogleSignInProvider extends ChangeNotifier {
  final googleSignIn = GoogleSignIn();

  GoogleSignInAccount? _user;

  GoogleSignInAccount get user => _user!;

  Future googleLogin() async {
    // var context;
    // showDialog(
    //     context: context,
    //     barrierDismissible: false,
    //     builder: (context) => Center(child: CircularProgressIndicator()));
    try {
      final googleUser = await googleSignIn.signIn();
      if (googleUser == null) return;
      _user = googleUser;

      final googleAuth = await googleUser.authentication;

      final credential = GoogleAuthProvider.credential(
          accessToken: googleAuth.accessToken, idToken: googleAuth.idToken);

      await FirebaseAuth.instance.signInWithCredential(credential);
    } catch (e) {
      print(e.toString());
    }

    notifyListeners();
  }

  Future logout() async {
    await googleSignIn.disconnect();
    FirebaseAuth.instance.signOut();
  }
}
