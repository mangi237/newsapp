import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../components/loginTextField.dart';
import '../components/mybutton.dart';

class RegisterPage extends StatefulWidget {
  final Function()? onTap;
  const RegisterPage({Key? key, required this.onTap}) : super(key: key);

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  final emailTextController = TextEditingController();
  final passwordTextController = TextEditingController();
  final passwodConfirm = TextEditingController();

  void signUp() async {
    showDialog(
        context: context,
        builder: ((context) => Center(
              child: CircularProgressIndicator(),
            )));

    if (passwordTextController.text != passwodConfirm.text) {
      Navigator.pop(context);
      displayMessage('Passwords Dont Match');
    }

    try {
      await FirebaseAuth.instance.createUserWithEmailAndPassword(
          email: emailTextController.text,
          password: passwordTextController.text);
      if (context.mounted) Navigator.pop(context);
    } on FirebaseAuthException catch (e) {
      Navigator.pop(context);
      displayMessage(e.code);
    }
  }

  void displayMessage(String message) {
    showDialog(
      context: context,
      builder: ((context) {
        return AlertDialog(
          title: Text(message),
        );
      }),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              width: double.infinity,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    child: Padding(
                      padding: const EdgeInsets.only(bottom: 30.0),
                      child: Text(
                        'Geestable',
                        style: GoogleFonts.getFont('DM Sans').copyWith(
                          fontSize: 40,
                          color: Colors.red,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 18.0),
                    child: Container(
                      child: Text(
                        'Lets Create you an Account',
                        style: GoogleFonts.getFont('DM Sans').copyWith(
                          fontSize: 20,
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: TextFieldLogin(
                controller: emailTextController,
                hintText: 'Enter your Email',
                obscureText: false,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                left: 20.0,
                right: 20,
              ),
              child: TextFieldLogin(
                controller: passwordTextController,
                hintText: 'Enter your Password',
                obscureText: true,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                left: 20.0,
                right: 20,
                top: 20,
              ),
              child: TextFieldLogin(
                controller: passwodConfirm,
                hintText: 'Confirm your Password',
                obscureText: true,
              ),
            ),
            MyButton(
              onTap: signUp,
              text: 'Sign Up',
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    'Already Have an Account?',
                    style: GoogleFonts.getFont('DM Sans').copyWith(
                      fontSize: 18,
                      color: Colors.black54,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 5.0),
                    child: GestureDetector(
                      onTap: widget.onTap,
                      child: Text(
                        'Sign In',
                        style: GoogleFonts.getFont('DM Sans').copyWith(
                          fontSize: 18,
                          color: Colors.red,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
