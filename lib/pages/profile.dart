import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:yarn/pages/add.dart';
import './data.dart';
import 'readingpagre.dart';
import 'add.dart';
import 'settings.dart';
class MyProfilePage extends StatefulWidget {
  const MyProfilePage({Key? key}) : super(key: key);

  @override
 
  State<MyProfilePage> createState() => _MyProfilePageState();
}

class _MyProfilePageState extends State<MyProfilePage> {
  @override
   void signOut(){
    
  }

  
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(

appBar: AppBar(
  backgroundColor: Colors.white,
  foregroundColor: Colors.black,
  elevation: 0,
  title: Text('Profile',style:GoogleFonts.getFont('DM Sans').copyWith(
    fontSize: 25,
    color:Colors.black,
    fontWeight: FontWeight.w600,
  )),
  centerTitle: true,
),
          body: ListView(children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.all(16),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'My Profile',
                        style:GoogleFonts.getFont('DM Sans').copyWith(
                          fontSize: 25,
                          fontWeight: FontWeight.w500,
                        )
                      ),
   IconButton(
                        onPressed: signOut,
                        icon: Icon(
                          Icons.logout,
                          size: 30,
                          color: Colors.black,
                        ))
                    ],
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,                        crossAxisAlignment: CrossAxisAlignment.center,
                        // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            height: 140,
                            width: 140,
                            decoration: const BoxDecoration(
                             color: Colors.black,
                              borderRadius: BorderRadius.all(Radius.circular(60)),
                            ),
                            child: Icon(Icons.account_circle_outlined,size:80,color: Colors.white,),
                          ),
                          
                        ],
                      ),
                    ),
                     Padding(
                  padding: const EdgeInsets.all(13.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        'User Email ',
                        style:GoogleFonts.getFont('DM Sans').copyWith(fontSize: 25,fontWeight:FontWeight.w700,)
                      ),

                    ],
                  ),
                ),
                  ],
                ),
               Padding(
                 padding: const EdgeInsets.all(13.0),
                 child: Text('Favourite Articles',style: GoogleFonts.getFont('DM Sans').copyWith(
                  fontSize: 23,
                  color: Colors.black87,
                  fontWeight: FontWeight.w600,
                 ),),
               ),
                Container(
                  height: MediaQuery.of(context).size.height / 1,
                  decoration:const  BoxDecoration(
                    color: Colors.white38,
                    boxShadow: [
                     
                    ]
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(0.0),
                    child: ListView.builder(
                      scrollDirection: Axis.vertical,
                      itemCount: information.length,
                      itemBuilder: (context, index) => Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                              height: 400,
                              decoration: BoxDecoration(
                                border: Border.all(width: .5,color: Colors.grey),
                                borderRadius: BorderRadius.all(Radius.circular(15)),
                          
                              
                              ),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                // mainAxisAlignment: ,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Container(
                                      height: 200,
                                      // width: 160,
                                    
                                      decoration:const  BoxDecoration(
                                          image: DecorationImage(
                                              image: AssetImage(
                                                  'lib/images/flood.jpg'),
                                              fit: BoxFit.cover),
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(20))),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Container(
                                      height: 165,
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        // crossAxisAlignment: C,
                                        // mainAxisAlignment:
                                        // MainAxisAlignment.spaceBetween,
                                        children: [
                                          Text(
                                            information[index].topic,
                                            style:GoogleFonts.getFont('DM Sans').copyWith(fontSize: 25,fontWeight:FontWeight.w600,)
                                          ),
                                          Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Text(
                                                selection[index].category,
                                                style: GoogleFonts.getFont('DM Sans').copyWith(fontSize: 23,fontWeight:FontWeight.w400,)
                                              ),
                                              Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceBetween,
                                                children: [
                                                  Row(
                                                    children: [
                                                      Icon(Icons
                                                          .favorite_outline),
                                                      Text(information[index]
                                                          .likes
                                                          .toString())
                                                    ],
                                                  ),
                                                
                                                ],
                                              ),
                                            ],
                                          )
                                        ],
                                      ),
                                    ),
                                  ),
                                ],
                              ))),
                    ),
                  ),
                ),
              ],
            ),
          ])),
    );
  }
}
