import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';



 CardCreator({required String name, required String image, required String email}){
  return 
              Container(
                decoration: BoxDecoration(
                  color: Colors.white
                ),
                margin: EdgeInsets.symmetric(vertical: 10),
                padding: EdgeInsets.symmetric(horizontal: 20,vertical: 10),
                child:Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                    CircleAvatar(
                      radius: 50,
                      backgroundColor: Colors.white,
                      backgroundImage: AssetImage('assets/$image'),
                    ),
                    // Container(
                    //   margin: const EdgeInsets.only(top: 10),
                    //   child: Text('CS Student',
                    //     style: TextStyle(
                    //     fontSize: 20,
                    //     fontWeight: FontWeight.w800,
                    //     ),
                    //   ),
                    // )
                             ],
                      ),
                 Column(children: [
                     Text(name,
                      style: TextStyle(
                      fontSize: 17,
                      fontWeight: FontWeight.w900, 
                      color: Colors.blue,                  
                      )
                     ),
                    const SizedBox(
                       width: 210,
                       height: 60,      
                       child: Card(
                         child: ListTile(
                           contentPadding: EdgeInsets.symmetric(horizontal:10),
                           leading: Icon(Icons.phone,
                            color: Color.fromARGB(255, 232, 84, 104),
                           ),
                           title: Text("09121124323",
                            style: TextStyle(
                              fontWeight: FontWeight.w500
                            ),
                           )
                         )
                       ),
                     ),
                    SizedBox(
                       width: 210,
                       height: 60,
                       child: Card(
                         
                         child: ListTile(
                          
                           contentPadding: const EdgeInsets.symmetric(horizontal:20),
                           leading: const Icon(Icons.email,
                            color: Color.fromARGB(255, 232, 84, 104),
                           ),
                           title: Text(email,
                           style: const TextStyle(fontSize: 12, fontWeight: FontWeight.w500)
                           ),
                         )
                       ),
                     )
                    ]          
                    ),


              ],));
}