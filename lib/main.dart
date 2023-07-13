// import 'package:flutter/material.dart';
import 'dart:convert';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

import 'package:http/http.dart' as http;

import 'package:google_fonts/google_fonts.dart';
import 'package:yarn/pages/app_home.dart';
import 'package:yarn/pages/mainhome.dart';
import 'package:yarn/pages/profile.dart';
import 'package:yarn/pages/saved.dart';
import 'pages/home.dart';
import 'pages/search.dart';
import 'package:firebase_auth/firebase_auth.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
  //   // options: DefaultFirebase.a
  );
  runApp(const MyMainPage());
}

class MyMainPage extends StatefulWidget {
  const MyMainPage({Key? key}) : super(key: key);

  @override
  State<MyMainPage> createState() => _MyMainPageState();
}

class _MyMainPageState extends State<MyMainPage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyMainHome(),
    );
  }
}
