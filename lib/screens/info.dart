import 'package:catpedia/screens/breedlist.dart';
import 'package:flutter/material.dart';

class Catinfo extends StatelessWidget {
 static String id = 'info';
 final String imgurl;
 final String desc;
 final String name;

 Catinfo({required this.imgurl, required this.desc, required this. name});

 @override
 Widget build(BuildContext context) {
   double width_ = MediaQuery.of(context).size.width;

   return Scaffold(
     body: SafeArea(
       child: Padding(
         padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 10.0),
         child: Column(
           children: [
             Row(children: [
               GestureDetector(
                 onTap: () => Navigator.pop(context),
                 child: Container(
                   padding: EdgeInsets.all(8),
                   decoration: BoxDecoration(
                     color: Colors.blue,
                     borderRadius: BorderRadius.circular(20),
                   ),
                   child: Icon(
                     Icons.arrow_back,
                     color: Colors.white,
                   ),
                 ),
               ),
               Container(width: width_ * .20, color: Colors.transparent),
               Text(
                 '$name',
                 style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold,color: Colors.pink),
               ),
             ]),
             SizedBox(height: 20),
             Expanded(
               child: SingleChildScrollView(
                 child: Padding(
                   padding:
                   const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                   child: Column(
                     crossAxisAlignment: CrossAxisAlignment.start,
                     children: [

                       ClipRRect(
                           borderRadius: BorderRadius.circular(8.0),
                           child:Image(image:NetworkImage(imgurl))
                       ),

                       SizedBox(height: 30),
                       Text(
                         '$desc',
                         style: TextStyle(
                           fontSize: 16,
                         ),
                       ),
                     ],
                   ),
                 ),
               ),
             ),
             Container(
               margin: EdgeInsets.symmetric(horizontal:10,vertical: 20),
               decoration: BoxDecoration(
                   color: Colors.pink,
                   borderRadius: BorderRadius.circular(12),
                   boxShadow: [
                     BoxShadow(
                       color: Color.fromARGB(255, 255, 184, 179),
                       blurRadius: 8.0,
                       spreadRadius: 0.5,
                       offset: Offset(1, 1),
                     )
                   ]
               ),
               padding: EdgeInsets.symmetric(horizontal: 30,vertical: 15),
               child: Row(
                 mainAxisAlignment: MainAxisAlignment.center,
                 children: [
                   Text('Bookmark',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 24,color: Color.fromARGB(255, 255, 154, 187)),),
                   SizedBox(width: 8,),
                   Icon(Icons.bookmark,color: Color.fromARGB(255, 255, 154, 187))
                 ],
               ),
             )
           ],

         ),
       ),
     ),
   );
 }
}

Container headingSub({header, sub}) => Container(
  decoration: BoxDecoration(

  ),
  padding: EdgeInsets.symmetric(horizontal:20),
  child: Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Text(
        header,
        style: TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 18,
          color: Colors.pink[600],
        ),
      ),
      SizedBox(height: 14),
      Text(
        sub,
        style: TextStyle(
          fontSize: 12,
          color: Colors.black,
        ),
      ),
      SizedBox(height: 40.0),

    ],
  ),
);

