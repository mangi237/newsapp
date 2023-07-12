import 'package:flutter/material.dart';
// import 'package:http/http.dart' as http;
    
import 'package:google_fonts/google_fonts.dart';
import 'package:yarn/pages/new_home.dart';
import 'package:yarn/pages/profile.dart';
import 'package:yarn/pages/saved.dart';
import 'home.dart';
import 'search.dart';

class MyAppHome extends StatefulWidget {
   MyAppHome({ Key? key }) : super(key: key);

  @override
  State<MyAppHome> createState() => _MyAppHomeState();
}

class _MyAppHomeState extends State<MyAppHome> {
   int myIndex = 0;

  List<Widget> widgetList = [
    MyNewHome(),
    MySearchPage(),
    MySavedPage(),
    MyProfilePage()
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
         theme: ThemeData(
        textTheme: TextTheme(
          headline6: GoogleFonts.poppins(),
          bodyText1: GoogleFonts.poppins(),
        ),
      ),
      home: Scaffold(
         body: IndexedStack(
          children: widgetList,
          index: myIndex,
          
        ),
         bottomNavigationBar: BottomNavigationBar(
            onTap: (index) {
              setState(() {
                myIndex = index;
              });
            },
            currentIndex: myIndex,
            elevation: 1,
            showSelectedLabels: false,
            showUnselectedLabels: false,
            selectedItemColor: Colors.teal,
            unselectedItemColor: Colors.black,
            // backgroundColor: Colors.black,
            items: const [
              BottomNavigationBarItem(
                label: 'Home',
                icon: Icon(
                  Icons.home_outlined,
                  size: 30,
                ),
              ),
              BottomNavigationBarItem(
                // backgroundColor: Colors.black87,
                label: 'Search',
                icon: Icon(
                  Icons.search_outlined,
                  size: 30,
                ),
              ),
              BottomNavigationBarItem(
                label: 'Bookmark',
                icon: Icon(
                  Icons.bookmark_outline,
                  size: 30,
                ),
              ),
              BottomNavigationBarItem(
                  label: 'Profile',
                  icon: Icon(
                    Icons.account_circle_outlined,
                    size: 30,
                  )),
            ]),
      ),

    );
  }
}