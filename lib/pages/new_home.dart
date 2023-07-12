import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
// import 'package:yarn/pages/post.dart';
import 'package:yarn/pages/read.dart';
import 'package:yarn/pages/settings.dart';
import 'data.dart';

class MyNewHome extends StatefulWidget {
  const MyNewHome({Key? key}) : super(key: key);

  @override
  State<MyNewHome> createState() => _MyNewHomeState();
}

class _MyNewHomeState extends State<MyNewHome> {
  List<String> categorys = [
    'cameroon',
    'Beauty',
    'Sport',
    'Technology',
    'Entertainment',
  ];
  int selectedIndex = 0;
  bool like = false;
  bool LikeNumber = false;
  // var   likeAmount = 0;

  final currentUser = FirebaseAuth.instance.currentUser;

 

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          floatingActionButton: FloatingActionButton(
            onPressed:() => Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => MySettings(),
                        )),
            backgroundColor: Colors.red,
            foregroundColor: Colors.white,
            elevation: 1,
            hoverColor: Colors.red.shade400,
            child: Icon(
              Icons.add,
              size: 35,
              color: Colors.white,
            ),
          ),
          body: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 30.0, left: 15, right: 15),
                child: Row(
                  children: [
                    Text(
                      'Geestables',
                      style: GoogleFonts.getFont('DM Sans').copyWith(
                        fontSize: 30,
                        fontWeight: FontWeight.w800,
                        // fontFamily:
                        color: Colors.black,
                      ),
                    ),
                    
                  ],
                ),
              ),
         SingleChildScrollView(
                scrollDirection: Axis.vertical,
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: GestureDetector(
                    onTap: () => Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => ReadGeest(),
                        )),
                    child: Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.only(
                              bottomLeft: Radius.circular(30),
                              bottomRight: Radius.circular(30))),
                      height: MediaQuery.of(context).size.height / 1.45,
                      width: double.infinity,
                      child: ListView.builder(
                        itemCount: information.length,
                        itemBuilder: (context, index) => Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(12.0),
                              child: Container(
                                // color: Colors.amber,
                                decoration: const BoxDecoration(
                                    color: Colors.white,
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(20)),
                                    boxShadow: [
                                      BoxShadow(
                                        blurRadius: 300,
                                        color:
                                            Color.fromARGB(92, 236, 233, 233),
                                      )
                                    ]),
                                height: 470,
                                width: double.infinity,
                                child: Padding(
                                  padding: const EdgeInsets.all(10.0),
                                  child: Column(
                                    children: [
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        children: [
                                          Text(
                                            categorys[index],
                                            style:
                                                GoogleFonts.getFont('DM Sans')
                                                    .copyWith(
                                              fontSize: 20,
                                              color: Colors.black54,
                                              fontWeight: FontWeight.w400,
                                            ),
                                          ),
                                          Text(
                                            'Date',
                                            style:
                                                GoogleFonts.getFont('DM Sans')
                                                    .copyWith(
                                              fontSize: 20,
                                              color: Colors.black54,
                                              fontWeight: FontWeight.w400,
                                            ),
                                          ),
                                        ],
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Text(
                                          information[index].table,
                                          style: GoogleFonts.getFont('DM Sans')
                                              .copyWith(
                                            fontSize: 23,
                                            color: Colors.black87,
                                            fontWeight: FontWeight.w800,
                                          ),
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.all(13.0),
                                        child: Container(
                                          height: 200,
                                          width: double.infinity,
                                          decoration: BoxDecoration(
                                            image: DecorationImage(
                                                image: AssetImage(
                                                    'lib/images/save2.png'),
                                                fit: BoxFit.cover),
                                          ),
                                        ),
                                      ),
                                      Row(
                                        children: [
                                          Container(
                                            decoration: const BoxDecoration(
                                                color: Color.fromARGB(
                                                    197, 244, 67, 54),
                                                borderRadius: BorderRadius.all(
                                                    Radius.circular(50))),
                                            child: Padding(
                                              padding:
                                                  const EdgeInsets.all(12.0),
                                              child: Row(
                                                children: [
                                                  Row(
                                                    children: [
                                                      Row(
                                                        children: [
                                                          Container(
                                                            height: 35,
                                                            width: 35,
                                                            decoration:
                                                                const BoxDecoration(
                                                              borderRadius: BorderRadius
                                                                  .all(Radius
                                                                      .circular(
                                                                          50)),
                                                              image: DecorationImage(
                                                                  image: AssetImage(
                                                                      'lib/images/sign_in.png'),
                                                                  fit: BoxFit
                                                                      .cover),
                                                            ),
                                                          ),
                                                          Container(
                                                            height: 35,
                                                            width: 35,
                                                            decoration:
                                                                const BoxDecoration(
                                                              borderRadius: BorderRadius
                                                                  .all(Radius
                                                                      .circular(
                                                                          50)),
                                                              image: DecorationImage(
                                                                  image: AssetImage(
                                                                      'lib/images/user3'),
                                                                  fit: BoxFit
                                                                      .cover),
                                                            ),
                                                          )
                                                        ],
                                                      ),
                                                      Padding(
                                                        padding:
                                                            const EdgeInsets
                                                                .all(10.0),
                                                        child: Text(
                                                          '50+ Geest',
                                                          style: GoogleFonts
                                                                  .getFont(
                                                                      'DM Sans')
                                                              .copyWith(
                                                            fontSize: 17,
                                                            color: Colors.white,
                                                            fontWeight:
                                                                FontWeight.w800,
                                                          ),
                                                        ),
                                                      )
                                                    ],
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ),
                                          Row(
                                            children: [
                                              Padding(
                                                padding:
                                                    const EdgeInsets.all(8.0),
                                                child: IconButton(
                                                    onPressed: () {
                                                      setState(() {
                                                        like = like == false
                                                            ? true
                                                            : false;
                                                      });
                                                    },
                                                    icon: like == false
                                                        ? Icon(
                                                            Icons
                                                                .favorite_outline,
                                                            size: 25,
                                                            color:
                                                                Colors.black54,
                                                          )
                                                        : Icon(
                                                            Icons.favorite,
                                                            size: 25,
                                                            color: Colors.red,
                                                          )),
                                              ),
                                            ],
                                          ),
                                        ],
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                      )
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              )
            ],
          )),
    );
  }
}
