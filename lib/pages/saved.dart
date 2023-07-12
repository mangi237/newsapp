import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'readingpagre.dart';
import './data.dart';


class MySavedPage extends StatefulWidget {
  const MySavedPage({ Key? key }) : super(key: key);

  @override
  State<MySavedPage> createState() => _MySavedPageState();
}

class _MySavedPageState extends State<MySavedPage> {
  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: ListView(
          children:   [
          Padding(
               padding:  EdgeInsets.only(left:23.0,top: 40),
               child: Text('Saved',style:GoogleFonts.getFont('DM Sans').copyWith(fontSize: 25,fontWeight:FontWeight.w400,),),

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
                  borderRadius: BorderRadius.all(Radius.circular(10))
                  
                ),
               child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                   width:  MediaQuery.of(context).size.width / 1.5,
                    child:Padding(
                      padding: const EdgeInsets.all(13.0),
                      child: Container(
                        child: TextField(
                          
                          decoration: InputDecoration(
                            hintText: 'Search saved',
                            hintStyle:  GoogleFonts.getFont('DM Sans').copyWith(fontSize: 23,fontWeight:FontWeight.w400,),
                            labelStyle: TextStyle(
                              fontSize: 20,
                              color: Colors.black,
                            ),
                            border:InputBorder.none,
                          ),
                        
                          
                        ),
                      ),
                      
                    ),

                  ),
             const      Padding(
                    padding: EdgeInsets.all(5.0),
                    child: Icon(Icons.search_outlined,size: 30,color: Colors.black54,),
                  )
                ],
               ),
               ),
             ),
            
            
    
          Container(
                height: MediaQuery.of(context).size.height / 1,
                
                child:  Padding(
                  padding: const EdgeInsets.all(0.0),
                  child: ListView.builder(
                    scrollDirection: Axis.vertical,
                      itemCount: information.length,
                      itemBuilder: (context, index) => Padding(
                        padding: const EdgeInsets.all(8.0),
                        child:Container(
                          height: 190,
                          
                              decoration:const  BoxDecoration(
                      border: Border(
              bottom: BorderSide(width: .5, color: Colors.grey),
            ),
                ),
                          child: Padding(
                            padding: const EdgeInsets.only(bottom:8.0),
                            child: Row(
                              children: [
                                Container(
                                  height:165,
                                  width: 160,
                                  decoration: BoxDecoration(
                                    image: DecorationImage(image: AssetImage('lib/images/flood.jpg'),fit: BoxFit.cover),
                                  borderRadius: BorderRadius.all(Radius.circular(20))
                                  ),
                                ),
                                  Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Container(
                                height: 165,
                                width:  MediaQuery.of(context).size.width / 2.2,
                                child: Column(
                                  // mainAxisAlignment: ,
                                  // crossAxisAlignment: C,
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      information[index].topic,
                                      style:GoogleFonts.getFont('DM Sans').copyWith(fontSize: 20,fontWeight:FontWeight.w500,)
                                    ),
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text(selection[index].category,style:GoogleFonts.getFont('DM Sans').copyWith(fontSize: 18,fontWeight:FontWeight.w400,)),
                                        
                                        Row(
                                          children:   [
                                            Icon(Icons.comment_outlined),
                                            Text(information[index].likes.toString())
                                          ],
                                        ),
                                         Row(
                                          children:  [
                                            Icon(Icons.favorite_outline),
                                            Text(information[index].comments.toString())
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
                          )
                        )
                      ),
                    ),
                ),

               ),
          ],
        ),
      ),
    );
  }
}