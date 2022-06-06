import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';



Row CardCreator({required String name, required String image, required String email}){
  return 
              Row(
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
                    Container(
                      margin: const EdgeInsets.only(top: 10),
                      child: Text('CS Student',
                        style: GoogleFonts.macondo(
                        fontSize: 20,
                        fontWeight: FontWeight.w800,
                        ),
                      ),
                    )
                             ],
                      ),
                 Column(children: [
                     Text(name,
                      style: GoogleFonts.trirong(
                      fontSize: 17,
                      fontWeight: FontWeight.w900,                   
                      )
                     ),
                    const SizedBox(
                       width: 250,
                       height: 60,      
                       child: Card(
                         child: ListTile(
                           contentPadding: EdgeInsets.symmetric(horizontal:10),
                           leading: Icon(Icons.phone),
                           title: Text("09121124323",
                            style: TextStyle(
                              fontWeight: FontWeight.w500
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
                           contentPadding: const EdgeInsets.symmetric(horizontal:10),
                           leading: const Icon(Icons.email),
                           title: Text(email,
                           style: const TextStyle(fontSize: 12, fontWeight: FontWeight.w500)
                           ),
                         )
                       ),
                     )
                    ]          
                    ),


              ],);
}