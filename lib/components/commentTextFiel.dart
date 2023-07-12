import 'package:flutter/material.dart';

class TextFieldComment extends StatelessWidget {
  final TextEditingController controller;
  final String hintText;
  final bool obscureText;
  const TextFieldComment({Key? key, required this.controller,
  required this.hintText,
  required this.obscureText}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      obscureText: obscureText,
      decoration: InputDecoration(
        enabledBorder: const OutlineInputBorder(
          borderSide: BorderSide(color: Color.fromARGB(186, 158, 158, 158)),
          borderRadius: BorderRadius.all(Radius.circular(35)),

        ),
         focusedBorder: const OutlineInputBorder(
          borderSide: BorderSide(color: Color.fromARGB(186, 158, 158, 158)),
          borderRadius: BorderRadius.all(Radius.circular(35)),
        ),
        
        fillColor: Color.fromARGB(186, 158, 158, 158),

        filled: true,
        hintText: hintText,
        
        hintStyle: TextStyle(
          color: Colors.black,
          
          fontSize: 20,
        ),
        
      ),
      
    );
  }
}
