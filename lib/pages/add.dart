import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AddPage extends StatefulWidget {
  const AddPage({Key? key}) : super(key: key);

  

  Future uploadFile() async {}

  @override
  State<AddPage> createState() => _AddPageState();
}

class _AddPageState extends State<AddPage> {
  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          title: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              'Add New Yarn',
              style: GoogleFonts.getFont('DM Sans').copyWith(
                  fontSize: 28,
                  color: Colors.black87,
                  fontWeight: FontWeight.w700,
                  
                  ),
            ),
          ),
          centerTitle: true,
        ),
       
      ),
    );
  }
}
