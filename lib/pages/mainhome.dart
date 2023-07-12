import 'package:flutter/material.dart';

import 'package:http/http.dart' as http;
    
import 'package:google_fonts/google_fonts.dart';
import 'package:yarn/wrapper.dart';
import 'package:yarn/pages/app_home.dart';
import 'package:yarn/pages/profile.dart';
import 'package:yarn/pages/saved.dart';
import 'package:yarn/pages/splash_screen.dart';
import 'home.dart';
import 'search.dart';


class MyMainHome extends StatefulWidget {
  const MyMainHome({ Key? key }) : super(key: key);

  @override
  State<MyMainHome> createState() => _MyMainHomeState();
}

class _MyMainHomeState extends State<MyMainHome> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home:Wrapper() ,
    );
  }
}