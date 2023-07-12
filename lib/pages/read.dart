import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ReadGeest extends StatefulWidget {
  const ReadGeest({Key? key}) : super(key: key);

  @override
  State<ReadGeest> createState() => _ReadGeestState();
}

class _ReadGeestState extends State<ReadGeest> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
          title: Text('Geest', style: GoogleFonts.getFont('DM Sans').copyWith(
            fontSize: 30,
            color: Colors.black,
            
          ),),
        ),
        body: Column(
          children: [
            Column(
              
            )
          ],
        ),
      ),
    );
  }
}