import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:yarn/pages/comments.dart';
import '../components/commentTextFiel.dart';
import './data.dart';

class MyReadingPage extends StatefulWidget {
  const MyReadingPage({Key? key}) : super(key: key);

  @override
  State<MyReadingPage> createState() => _MyReadingPageState();
}

class _MyReadingPageState extends State<MyReadingPage> {
  final commentController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          floatingActionButton: FloatingActionButton(onPressed:() => Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => Comments(),
                  ),
                ),
           backgroundColor: Colors.red,elevation: 1,child: Icon(Icons.send_rounded,size: 25,color: Colors.white,),),
          appBar: PreferredSize(
            preferredSize: const Size.fromHeight(70),
            child: AppBar(
              title: const Text(
                '',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 30,
                ),
              ),
              centerTitle: true,
              backgroundColor: Colors.transparent,
              elevation: 0,
            ),
          ),
          body: Stack(alignment: Alignment.bottomCenter, children: [
            ListView(
              scrollDirection: Axis.vertical,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: Container(
                        height: 35,
                        width: 120,
                        child: PageView.builder(
                            scrollDirection: Axis.vertical,
                            itemCount: 1,
                            itemBuilder: (context, index) => Container(
                                  child: Text(selection[index].category,
                                      style: GoogleFonts.getFont('DM Sans')
                                          .copyWith(
                                        fontSize: 21,
                                        color: Colors.black,
                                        letterSpacing: 1,
                                        fontWeight: FontWeight.w500,
                                      )),
                                )),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Container(
                        height: 60,
                        // width: ,
                        decoration: const BoxDecoration(
                            // color: Colors.teal,
                            borderRadius:
                                BorderRadius.all(Radius.circular(40))),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              width: 30,
                              height: 50,
                              child: Column(
                                children: [
                                  Icon(
                                    Icons.favorite_outline,
                                    size: 25,
                                    color: Colors.grey,
                                  ),
                                  Text('2K',
                                      style: GoogleFonts.getFont('DM Sans')
                                          .copyWith(
                                        fontSize: 14,
                                        color: Colors.grey,
                                        // letterSpacing: 1,
                                        fontWeight: FontWeight.w600,
                                      ))
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    )
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 0, left: 15.0, right: 15),
                  child: Container(
                    height: 80,
                    child: ListView.builder(
                        scrollDirection: Axis.vertical,
                        itemCount: 1,
                        itemBuilder: (context, index) => Container(
                              child: Text(information[index].topic,
                                  style:
                                      GoogleFonts.getFont('DM Sans').copyWith(
                                    fontSize: 26,
                                    color: Colors.black,
                                    letterSpacing: 1,
                                    fontWeight: FontWeight.w800,
                                  )),
                            )),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 0, left: 15.0),
                  child: Container(
                    height: 70,
                    child: ListView.builder(
                        scrollDirection: Axis.vertical,
                        itemCount: 1,
                        itemBuilder: (context, index) => Row(
                              children: [
                                Container(
                                  height: 60,
                                  width: 60,
                                  decoration: const BoxDecoration(
                                      image: DecorationImage(
                                          image: AssetImage(
                                              'lib/images/logo1.jpg'),
                                          fit: BoxFit.cover),
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(50))),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 8.0),
                                  child: Text(information[index].channel,
                                      style: GoogleFonts.getFont('DM Sans')
                                          .copyWith(
                                        fontSize: 20,
                                        color: Colors.black,
                                        letterSpacing: .5,
                                        fontWeight: FontWeight.w500,
                                      )),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(left: 8.0),
                                  child: Text('Today',
                                      style: GoogleFonts.getFont('DM Sans')
                                          .copyWith(
                                        fontSize: 20,
                                        color: Colors.grey,
                                        letterSpacing: 1,
                                        fontWeight: FontWeight.w400,
                                      )),
                                )
                              ],
                            )),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                    top: 3,
                    left: 13.0,
                    right: 13,
                  ),
                  child: Container(
                    height: MediaQuery.of(context).size.height / 3,
                    width: double.infinity,
                    decoration: const BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage('lib/images/flood.jpg'),
                          fit: BoxFit.cover,
                        ),
                        borderRadius: BorderRadius.all(Radius.circular(15))),
                  ),
                ),
                Container(
                  height: MediaQuery.of(context).size.height,
                  child: Padding(
                    padding:
                        const EdgeInsets.only(top: 20, left: 15.0, right: 15),
                    child: Container(
                      height: MediaQuery.of(context).size.height,
                      child: ListView.builder(
                          scrollDirection: Axis.vertical,
                          itemCount: 1,
                          itemBuilder: (context, index) => Padding(
                                padding: const EdgeInsets.all(13.0),
                                child: Container(
                                  child: Text(information[index].articles,
                                      style: GoogleFonts.getFont('DM Sans')
                                          .copyWith(
                                        fontSize: 24,
                                        color: Colors.black87,
                                        // letterSpacing: 1,
                                        fontWeight: FontWeight.w400,
                                      )),
                                ),
                              )),
                    ),
                  ),
                )
              ],
            ),
            
          ]),
        ));
  }
}
