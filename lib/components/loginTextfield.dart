import 'package:flutter/material.dart';

class TextFieldLogin extends StatelessWidget {
  final TextEditingController controller;
  final String hintText;
  final bool obscureText;
  const TextFieldLogin({Key? key, required this.controller,
  required this.hintText,
  required this.obscureText}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      obscureText: obscureText,
      decoration: InputDecoration(
        enabledBorder: const OutlineInputBorder(
          borderSide: BorderSide(color: Colors.white)
        ),
         focusedBorder: const OutlineInputBorder(
          borderSide: BorderSide(color: Colors.white)
        ),
        fillColor: Colors.grey[200],
        filled: true,
        hintText: hintText,
        
        hintStyle: TextStyle(
          color: Colors.grey[500],
          fontSize: 20,
        )
      ),
    );
  }
}
