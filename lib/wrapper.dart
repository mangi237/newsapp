import 'package:flutter/material.dart';
// import 'package:yarn/authentication/sing';
import 'package:yarn/pages/splash_screen.dart';
import 'pages/app_home.dart';

class Wrapper extends StatefulWidget {
  const Wrapper({ Key? key }) : super(key: key);

  @override
  State<Wrapper> createState() => _WrapperState();
}

class _WrapperState extends State<Wrapper> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body:MySplashScreen(),
      ),
    );
  }
}