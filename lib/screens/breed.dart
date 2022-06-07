// ignore_for_file: prefer_const_constructors

import 'package:catpedia/helpers/request_helper.dart';
import 'package:flutter/material.dart';

class BreedScreen extends StatelessWidget {
  final String imgurl;
  final String desc;
  final String name;
  final String country_code;
  const BreedScreen({required this.imgurl, required this.desc, required this.name, required this.country_code});
  static String id = 'Breed';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        
        child: Container(
          decoration: BoxDecoration(
            
          ),
          height: double.infinity,
          padding: EdgeInsets.only(left: 20, top: 10,right: 20),
          child:Stack(
        children: [
          
            Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [

                          GestureDetector(
                              onTap: () => Navigator.pop(context),
                              child: Container(
                                padding: EdgeInsets.all(8),
                                decoration: BoxDecoration(
                                    color: Colors.blue,
                                    borderRadius: BorderRadius.circular(20)),
                                child: Icon(
                                  Icons.arrow_back,
                                  color: Colors.white,
                                ),
                              )),
                          Container(
                            padding: EdgeInsets.symmetric(
                                horizontal: 20, vertical: 0),
                            decoration: BoxDecoration(
                                color: Color.fromARGB(255, 232, 84, 104),
                                borderRadius: BorderRadius.circular(50)),
                            width: 220,
                            child: TextField(
                              
                                onChanged: (value) async {
                                  String url =
                                      'https://api.thecatapi.com/v1/breeds/search?q=${value}';
                                  Uri uri = Uri.parse(url);
                                  var response = await RequestHelper.getRequest(
                                      uri,
                                      "8f9719f3-c53c-4aa0-82f0-4107493d8c21");
                                  if (response == null) {
                                  
                                    print(response.toString());
                                    return;
                                  }
                                  if (response != null) {
                                  
                                    print(response.toString());
                                  }
                                },
                               
                                textAlign: TextAlign.center,
                                decoration: InputDecoration(
                                  border: InputBorder.none,
                                  focusedBorder: InputBorder.none,
                                  enabledBorder: InputBorder.none,
                                  errorBorder: InputBorder.none,
                                  disabledBorder: InputBorder.none,
                                  hintStyle: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color:
                                          Color.fromARGB(255, 250, 207, 204)),
                                  hintText: 'Search Breed',
                                )),
                          ),
                          Container(
                            padding: EdgeInsets.all(8),
                            decoration: BoxDecoration(
                                color: Colors.blue,
                                borderRadius: BorderRadius.circular(20)),
                            child: Icon(
                              Icons.info,
                              color: Colors.white,
                            ),
                          )
                        ],
                      ),
            
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(padding: EdgeInsets.fromLTRB(0, 90, 0, 0),
                child: Row(
                  children: [
                    Expanded(
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(8.0),
                        child: Image(
                          image: NetworkImage(
                              imgurl),

                        ),
                      ),
                    ),

                  ],
                ),)

              ],
            ),
           
           Positioned(

                        bottom: 0,
                        child: 
                      Container(
                        height: 350,
                        padding: EdgeInsets.symmetric(horizontal: 11,vertical: 40),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.only(topLeft: Radius.circular(15),topRight: Radius.circular(15)),
                          color: Colors.white,
                          boxShadow: [
                      BoxShadow(
                        color: Color.fromARGB(255, 255, 184, 179),
                        blurRadius: 15.0,
                        spreadRadius: 0.5,
                        offset: Offset(1, 1),
                      )
                    ]
                        ),
                        child:Column(
                          children:[
                            Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
       
        SizedBox(
          width: 10,
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Text(
                  name,
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.pink,
                      fontSize: 20),
                ),
                SizedBox(
                  width: 3,
                ),
                ClipRRect(
                  borderRadius: BorderRadius.circular(3.0),
                  child: Image(
                    image: NetworkImage(
                        'https://countryflagsapi.com/png/${country_code.toLowerCase()}'),
                    width: 20,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 130,
              width: 340,
              child: Text('$desc',style: TextStyle(fontSize: 14),)),

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
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(width: 20,),
                    Row(
                      children: [ Text('Bookmark',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 24,color: Color.fromARGB(255, 255, 154, 187)),),
                    SizedBox(width: 8,),
                    Icon(Icons.bookmark,color: Color.fromARGB(255, 255, 154, 187)),],
                    ),
                   
                     SizedBox(width: 20,),
                  ],
                ),
              )
          ],
        ),
      ],
    )
                          ]
                        ) ,)
                      )
        ],
      ))),
    );
  }
}
