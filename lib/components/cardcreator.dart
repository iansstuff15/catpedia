import 'package:flutter/material.dart';

Container CardCreator({required String name, required String image, required String email, required String job}){
  return 
              Container(
                decoration: const BoxDecoration(
                  color:   Colors.white,
                ),
                margin: const EdgeInsets.symmetric(vertical: 10),
                padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 10),
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
                      style: const TextStyle(
                      fontSize: 17,
                      fontWeight: FontWeight.w900, 
                      color: Colors.blue,                  
                      )
                     ),
                    SizedBox(
                       width: 250,
                       height: 60,      
                       child: Card(
                         child: ListTile(
                           contentPadding: EdgeInsets.symmetric(horizontal:10),
                           leading: const Icon(Icons.work,
                            color:Color.fromARGB(255, 232, 84, 104),
                           ),
                           title: Text(job,
                            style: const TextStyle(
                              fontWeight: FontWeight.w500,
                            ),
                           )
                         )
                       ),
                     ),
                    SizedBox(
                       width: 250,
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