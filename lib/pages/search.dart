import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import './data.dart';

class MySearchPage extends StatefulWidget {
  const MySearchPage({Key? key}) : super(key: key);
  // var categoryindex = information[index].category;

  @override
  State<MySearchPage> createState() => _MySearchPageState();
}

class _MySearchPageState extends State<MySearchPage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: ListView(
          children: [
             Padding(
              padding: EdgeInsets.only(left: 23.0, top: 40),
              child: Text(
                'Find Something New',
                style: GoogleFonts.getFont('DM Sans').copyWith(
                  fontSize: 30,
                  fontWeight: FontWeight.w500,
                )
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(13.0),
              child: Container(
                height: 65,
                width: double.infinity,
                decoration: const BoxDecoration(
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                        blurRadius: 850,
                        color: Colors.grey,
                      ),
                    ],
                    borderRadius: BorderRadius.all(Radius.circular(10))),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      width: MediaQuery.of(context).size.width / 1.5,
                      child: Padding(
                        padding: const EdgeInsets.all(13.0),
                        child: Container(
                          child:  TextField(
                            decoration: InputDecoration(
                              hintText: 'Search',
                              hintStyle: GoogleFonts.getFont('DM Sans').copyWith(
                                fontWeight: FontWeight.w600,
                                fontSize: 20,
                              ) ,
                              labelStyle: TextStyle(
                                fontSize: 20,
                                color: Colors.black,
                              ),
                              border: InputBorder.none,
                            ),
                          ),
                        ),
                      ),
                    ),
                    Container(
                      
                        height: 65,
                        width: 65,
                        decoration: BoxDecoration(
                          color: Colors.teal,
                          borderRadius: BorderRadius.all(Radius.circular(10))
                        ),
                      child: const Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Icon(
                          Icons.search_outlined,
                          size: 30,
                          color: Colors.white,
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(13.0),
              child: Container(
                height: 60,
                child: Padding(
                  padding: const EdgeInsets.all(0.0),
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount:selection.length,
                    itemBuilder: (context, index) => InkWell(
                      child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            decoration:const  BoxDecoration(
                              color: Colors.teal,
                              borderRadius: BorderRadius.all(Radius.circular(20))
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text(
                             selection[index].category,
                                style: GoogleFonts.getFont('DM Sans').copyWith(
                                  fontSize: 18,
                                  color: Colors.white,
                                  fontWeight: FontWeight.w400,
                                )
                              ),
                            ),
                          )),
                    ),
                  ),
                ),
              ),
            ),
            Container(
              height: 10,
              decoration: const BoxDecoration(
                border: Border(
                  bottom: BorderSide(width: .5, color: Colors.grey),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(13.0),
              child: Text(
                'Popular Today',
                style: GoogleFonts.getFont('DM Sans').copyWith(
                  fontSize:23,
                  color: Colors.black,
                  fontWeight: FontWeight.w800,
                )
              ),
            ),
            Container(
              height: MediaQuery.of(context).size.height / 1,
              child: Padding(
                padding: const EdgeInsets.all(0.0),
                child: ListView.builder(
                  scrollDirection: Axis.vertical,
                  itemCount: information.length,
                  itemBuilder: (context, index) => Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                          height: 190,
                          decoration: const BoxDecoration(
                            boxShadow: [
                              BoxShadow(
                                blurRadius:2,
                                color: Colors.white,
                              )
                            ]
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Row(
                              children: [
                                Container(
                                  height: 165,
                                  width: 160,
                                  decoration: BoxDecoration(
                                      image: DecorationImage(
                                          image:
                                              AssetImage('lib/images/flood.jpg'),
                                          fit: BoxFit.cover),
                                      borderRadius:
                                          BorderRadius.all(Radius.circular(20))),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Container(
                                    height: 165,
                                    width:
                                        MediaQuery.of(context).size.width / 2.2,
                                    child: Column(
                                      // mainAxisAlignment: ,
                                      // crossAxisAlignment: C,
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text(
                                          information[index].topic,
                                          style: GoogleFonts.getFont('DM Sans').copyWith(
                                            fontSize: 19.5,
                                            fontWeight: FontWeight.w400,
                                          )
                                        ),
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Text(
                                              selection[index].category,
                                              style: GoogleFonts.getFont('DM Sans').copyWith(
                                                fontWeight: FontWeight.w500,
                                                fontSize: 16,
                                              )
                                            ),
                                            Row(
                                              children:  [
                                                Icon(Icons.comment_outlined),
                                                Text(information[index].comments.toString())
                                              ],
                                            ),
                                            Row(
                                              children:  [
                                                Icon(Icons.favorite_outline),
                                                Text(information[index].likes.toString())
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
                          ))),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
