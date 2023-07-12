import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:yarn/components/commentTextFiel.dart';

class Comments extends StatefulWidget {
  const Comments({Key? key}) : super(key: key);

  @override
  State<Comments> createState() => _CommentsState();
}

class _CommentsState extends State<Comments> {
  final commentController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text('Comments',style: GoogleFonts.getFont('DM Sans').copyWith(
          fontSize: 26,
          fontWeight: FontWeight.w700,
          color: Colors.black,
        ),),
        centerTitle: true,
        elevation: .5,
        backgroundColor: Colors.white,
      ),
      body: Container(
        height: double.infinity,
        width: double.infinity,
        color: Colors.white,
        child: 
            Stack(
              alignment: Alignment.bottomCenter,
              children: [
                Container(
                  height: MediaQuery.of(context).size.height/1,
                  child: ListView.builder(
                    itemCount: 3,
                    itemBuilder: (context, index) => Padding(
    
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                            blurRadius: 20,
                            color: Color.fromARGB(255, 236, 235, 235),
                          ),
                          
                        ],
                        borderRadius: BorderRadius.all(Radius.circular(20))
                      ),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(17.0),
                            child: Container(
                              height: 65,

                              width: 65,
                              decoration: BoxDecoration(
                                color: Colors.grey,
                                borderRadius: BorderRadius.all(Radius.circular(50))
                              ),
                              // color: Colors.grey,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(15.0),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [ 
                                Text('Mangi Laslie', style: GoogleFonts.getFont('DM Sans').copyWith(
                                  fontSize: 18,
                                  color: Colors.grey,
                                  fontWeight: FontWeight.w500,
                                ),),
                                Container(
                                  width: MediaQuery.of(context).size.width/1.6,
                                  child: Text('This news content is very good and pleasant thanks for the info', style: GoogleFonts.getFont(
                                    'DM Sans'
                                  ).copyWith(
                                    fontSize: 19,
                                    color: Colors.black,
                                    fontWeight: FontWeight.w400,
                                  ),),
                                ),
                                          
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  ) ,),
                ),
                Container(
                  // color: Color.fromARGB(120, 228, 223, 223),
                  width: double.infinity,
                  height: 100,
                  child:Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,

                    children: [
                      Container(
                        height: 75,
                        width: MediaQuery.of(context).size.width/1.4,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(20)),
                          color: Color.fromARGB(207, 197, 196, 196),

                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(15.0),
                          child: TextField(
                            controller: commentController,
                            decoration: InputDecoration(
                              
                              hintText: 'Enter your Comment',
                              hintStyle: GoogleFonts.getFont('DM Sans').copyWith(
                                fontSize: 22,
                                color: Color.fromARGB(99, 0, 0, 0),
                                fontWeight: FontWeight.w400,
                                
                                
                              ),
                                
                        // obscureText:false,
                              border: InputBorder.none,
                              enabledBorder: InputBorder.none
                              
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(13.0),
                        child: Container(
                          height: 75,
                          width: 75,
                          decoration: BoxDecoration(
                            color: Colors.red,
                            borderRadius: BorderRadius.all(Radius.circular(15))
                          ),
                          // color: Colors.red,

                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                            
                             Icon(Icons.send,size: 30,color: Colors.white,),
                            ],
                          )),
                      )
                    ],
                  )
                )
              ],
            ),
          
        ),
      
    );
  }
}
