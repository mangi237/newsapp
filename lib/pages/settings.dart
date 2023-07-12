import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import './data.dart'; 

class MySettings extends StatefulWidget {
  const MySettings({ Key? key }) : super(key: key);

  @override
  State<MySettings> createState() => _MySettingsState();
}

class _MySettingsState extends State<MySettings> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: PreferredSize(
            preferredSize: const Size.fromHeight(70),
          child: AppBar(
            backgroundColor: Colors.teal,
            elevation: 1,
            title: Row(
               mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text('Settings', style:GoogleFonts.getFont('DM Sans').copyWith(
                  fontSize: 30,
                  fontWeight: FontWeight.w600,
                  color: Colors.white,
        
                ) ,),
            const     Icon(Icons.search,size: 30,color: Colors.white,)
              ],
            ),
          ),
        ),
        body: ListView(
          children: [
            Row(
              children: [
                Container(
                  height: 90,
                  width: 90,
                  decoration:const  BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(70)),
                    color: Colors.teal,

                  ),

                ),
                Column(
                  children: [
                    
                  ],
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}