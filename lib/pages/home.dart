import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:yarn/pages/data.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:yarn/pages/profile.dart';
import 'package:yarn/pages/search.dart';
// import 'package:http/http.dart';
import 'readingpagre.dart';
import 'like_button.dart';

// import 'myhome.dart';


class MyHomePage extends StatefulWidget {
   MyHomePage({
    Key? key,
    /*required this.index*/
  }) : super(key: key);
  // final int index;
// final currentUser = FirebaseAuth.instance.currentUser;
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

   List<String> categorys = [
    'cameroon',
    'Beauty',
    'Sport',
    'Technology',
    'Entertainment',
  ];
  int selectedIndex = 0;
   void signOut() {
    FirebaseAuth.instance.signOut();
  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          textTheme: TextTheme(
        bodyText1: GoogleFonts.getFont('DM Sans').copyWith(fontSize: 25),
      )),
      home: Scaffold(
        // backgroundColor: Colors.white,
        body:
        ListView(children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.all(18.0),
                  child: Container(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          'Geestables',
                          style: GoogleFonts.getFont('DM Sans').copyWith(
                              fontSize: 30, fontWeight: FontWeight.bold),
                        ),
                        
                           Row(
                             children: [
                               Container(

                                height:60,
                                width:60,
                                decoration:BoxDecoration(
                                 borderRadius: BorderRadius.all(Radius.circular(50)),
                                color:Colors.black87,  
                                ),
                                child:IconButton(onPressed: ()=> Navigator.push(context, MaterialPageRoute(builder: (context) => MyProfilePage())), icon: Icon(Icons.account_circle_outlined ,size:30,color:Colors.white))
                               ),
                                Container(

                                height:60,
                                width:60,
                                decoration:BoxDecoration(
                                 borderRadius: BorderRadius.all(Radius.circular(50)),
                                color:Colors.black87,  
                                ),
                                child:IconButton(onPressed: ()=> Navigator.push(context, MaterialPageRoute(builder: (context) => MySearchPage())), icon: Icon(Icons.search ,size:30,color:Colors.white))
                               ),
                             ],
                           )
                      ],
                    ),
                  ),
                ),

      
                Padding(
                  padding: const EdgeInsets.all(13.0),
                  child: Container(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: EdgeInsets.all(20.0),
                          child: Text(
                            'Breaking News',
                            style: GoogleFonts.getFont('DM Sans').copyWith(
                              fontSize: 23,
                              fontWeight: FontWeight.w500,
                              color: Colors.black54,
                            ),
                            textAlign: TextAlign.start,
                          ),
                        ),
                        Container(
                          height: MediaQuery.of(context).size.height / 2,
                          child: PageView.builder(
                            scrollDirection: Axis.horizontal,
                            itemCount: information.length,
                            itemBuilder: (context, index) => MyBreakingContainer(
                              index: index,
                            ),
                          ),
                        )
                      ],
                    ),
                    decoration: BoxDecoration(
                        // color: Color.fromARGB(1, r, g, b),
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(blurRadius: 2810, color: Colors.grey.shade200
                              // blurStyle:
                              )
                        ],
                        border: Border.all(width: 1.1,color: Color.fromARGB(132, 158, 158, 158)),
                        borderRadius: BorderRadius.all(Radius.circular(20))),
                    width: double.infinity,
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children:  [
                    Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text(
                        'What You Follow ',
                        style: GoogleFonts.getFont('DM Sans').copyWith(fontSize: 20,fontWeight: FontWeight.w500),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text(
                        'See All',
                        style: GoogleFonts.getFont('DM Sans').copyWith(fontSize: 17,fontWeight: FontWeight.normal),
                      ),
                    )
                  ],
                ),
                Container(
                  height: MediaQuery.of(context).size.height / 1,
                  child: ListView.builder(
                    // scrollDirection: Axis.vertical,
                    itemCount: information.length,
                    itemBuilder: (context, index) => Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        // height: 40,
                        height: 150,
                        width: 110,
                        decoration: const BoxDecoration(
                          border: Border(
                            bottom: BorderSide(width: .5, color: Colors.grey),
                          ),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.only(bottom: 15.0),
                          child: Row(
                            children: [
                              Container(
                                height: 200,
                                width: 170,
                                decoration: const BoxDecoration(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(20)),
                                  image: DecorationImage(
                                      image: AssetImage('lib/images/flood.jpg'),
                                      fit: BoxFit.cover),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Container(
                                  width: MediaQuery.of(context).size.width / 2.2,
                                  child: Column(
                                    // mainAxisAlignment: ,
                                    // crossAxisAlignment: C,
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        information[index].topic,
                                        style:  GoogleFonts.getFont('DM Sans').copyWith(fontSize: 18.5,fontWeight: FontWeight.w400),
                                      ),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Text(
                                            selection[index].category,
                                            style: GoogleFonts.getFont('DM Sans').copyWith(fontSize: 15,color: Colors.grey),
                                          ),
                                          Row(
                                            children: [
                                              const Icon(Icons.comment_outlined),
                                              Text(information[index]
                                                  .comments
                                                  .toString())
                                            ],
                                          ),
                                          Row(
                                            children: [
                                              LikeButton(isLiked: true, onTap: (){}),
                                              Text(information[index]
                                                  .likes
                                                  .toString())
                                            ],
                                          ),
                                        ],
                                      )
                                    ],
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                )
              ],
            ),
          ]),
      
        ),
    
      );
  }
}

class MyBreakingContainer extends StatefulWidget {
  const MyBreakingContainer({Key? key, required this.index}) : super(key: key);
  final int index;

  @override
  State<MyBreakingContainer> createState() => _MyBreakingContainerState();
}

class _MyBreakingContainerState extends State<MyBreakingContainer> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Stack(
            alignment: Alignment.bottomLeft,
            children: [
              GestureDetector(
                onTap: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => MyReadingPage(),
                  ),
                ),
                child: Stack(children: [
                  Container(
                    height: 250,
                    decoration: const BoxDecoration(
                      // color: Colors.blue,  
                      image: DecorationImage(
                        image: AssetImage('lib/images/flood.jpg'),
                        fit: BoxFit.cover,
                      ),
                      borderRadius: BorderRadius.all(Radius.circular(30)),
                    ),
                  ),
                  
                ]),
              ),
                     Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: Container(
                                      width: double.infinity,
                                      child: Padding(
                                        padding: const EdgeInsets.all(14.0),
                                        child: Column(
                                          mainAxisAlignment: MainAxisAlignment.start,
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: [
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  height: 50,
                                  // width: 130,
                                  decoration: BoxDecoration(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(20)),
                                    color: Colors.red,
                                  ),
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Container(
                                        width: 130,
                                        height: 60,
                                        child: PageView.builder(
                                          itemCount: selection.length,
                                          itemBuilder: (context, index) => Column(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.center,
                                            children: [
                                              Text(
                                                selection[widget.index].category,
                                                style:  GoogleFonts.getFont('DM Sans').copyWith(fontSize: 20,fontWeight: FontWeight.w500,color: Colors.white,),
                                                textAlign: TextAlign.center,
                                              ),
                                            ],
                                          ),
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                        Text(
                          information[widget.index].topic,
                          style:  GoogleFonts.getFont('DM Sans').copyWith(fontSize: 25,fontWeight: FontWeight.w600,color: Colors.white,),
                          textAlign: TextAlign.start,
                        ),
                                          ],
                                        ),
                                      ),
                                    ),
                      ),
          

  ],
          ),
        ),

               
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                height: 50,
                width: 50,
                decoration: BoxDecoration(
                  image: const DecorationImage(
                      image: AssetImage('lib/images/logo1.jpg'),
                      fit: BoxFit.cover),
                  borderRadius: const BorderRadius.all(Radius.circular(50)),
                  boxShadow:  [
                    BoxShadow(
                      blurRadius: 10,
                      color: Colors.grey.shade200,
                    )
                  ],
                  border: Border.all(
                    width: .5,
                    color: Colors.grey,
                  ),
                ),
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(right: 17.0, left: 10),
                    child: Column(children: [
                      Icon(
                        Icons.favorite_outline,
                        size: 25,
                        color: Color.fromARGB(255, 129, 129, 129),
                      ),
                      Text(
                        information[widget.index].likes.toString(),
                        style: TextStyle(
                          fontSize: 20,
                        ),
                      )
                    ]),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 17),
                    child: Column(children: [
                      Icon(
                        Icons.comment_rounded,
                        size: 25,
                        color: const Color.fromARGB(255, 128, 127, 127),
                      ),
                      Text(
                        information[widget.index].comments.toString(),
                        style: TextStyle(
                          fontSize: 20,
                        ),
                      )
                    ]),
                  ),

                ],
              ),
            ],
          ),
        )
      ],
    );
  }
}
