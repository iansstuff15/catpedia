// ignore_for_file: prefer_const_constructors

import 'package:catpedia/helpers/request_helper.dart';
import 'package:flutter/material.dart';

class BreedScreen extends StatelessWidget {
  const BreedScreen({Key? key}) : super(key: key);
  static String id = 'Breed';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          child:Column(
        
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
        ],
      ))),
    );
  }
}
