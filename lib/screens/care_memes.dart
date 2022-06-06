// ignore_for_file: camel_case_types, prefer_const_constructors_in_immutables, prefer_const_constructors, avoid_unnecessary_containers, prefer_const_literals_to_create_immutables, sort_child_properties_last, non_constant_identifier_names, unnecessary_string_interpolations, use_key_in_widget_constructors

import 'package:flutter/material.dart';

class Memes extends StatelessWidget {
  static String id = 'memes';

  @override
  Widget build(BuildContext context) {
    double width_ = MediaQuery.of(context).size.width;
    double height_ = MediaQuery.of(context).size.height;

    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 10.0),
          child: Column(children: [
            Row(children: [
              GestureDetector(
                onTap: () => Navigator.pop(context),
                child: Container(
                  padding: EdgeInsets.all(8),
                  decoration: BoxDecoration(
                    color: Colors.yellow.shade700,
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
                'Memes',
                style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                    color: Colors.redAccent),
              ),
            ]),
            Expanded(
              child: SingleChildScrollView(
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(vertical: 10, horizontal: 5),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: 20,
                      ),
                      meme(context, 'assets/1.jpg'),
                      meme(context, 'assets/2.jpg'),
                      meme(context, 'assets/3.jpg'),
                      meme(context, 'assets/4.jpg'),
                      meme(context, 'assets/5.jpg'),
                      meme(context, 'assets/6.jpg'),
                      meme(context, 'assets/7.jpg'),
                      meme(context, 'assets/8.jpg'),
                      meme(context, 'assets/9.jpg'),
                      meme(context, 'assets/10.jpg'),
                      meme(context, 'assets/11.jpeg'),
                      meme(context, 'assets/12.jpg'),
                    ],
                  ),
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 10, vertical: 20),
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
                  ]),
              padding: EdgeInsets.symmetric(horizontal: 30, vertical: 15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Bookmark',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 24,
                        color: Color.fromARGB(255, 255, 154, 187)),
                  ),
                  SizedBox(
                    width: 8,
                  ),
                  Icon(Icons.bookmark,
                      color: Color.fromARGB(255, 255, 154, 187))
                ],
              ),
            ),
          ]),
        ),
      ),
    );
  }
}

Container meme(BuildContext context, String pict) {
  double width_ = MediaQuery.of(context).size.width;
  double height_ = MediaQuery.of(context).size.height;

  return Container(
    padding: EdgeInsets.symmetric(horizontal: 20),
    child: Column(children: [
      SizedBox(height: 10),
      ClipRRect(
          borderRadius: BorderRadius.circular(8.0),
          child: Image(image: AssetImage('$pict'))),
      SizedBox(height: 15),
    ]),
  );
}
