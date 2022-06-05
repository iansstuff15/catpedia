// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors, use_key_in_widget_constructors, avoid_unnecessary_containers

import 'dart:ffi';

import 'package:catpedia/screens/search.dart';
import 'package:catpedia/screens/cat_info.dart';
import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  static String id = 'home';

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double widgth = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
          child: Stack(
        children: <Widget>[
          Container(
            width: double.infinity,
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Image(
                          image: AssetImage('assets/logo.png'),
                          width: 100,
                        ),
                        Icon(Icons.info)
                      ]),
                  SizedBox(
                    height: 15,
                  ),
                  Text(
                    'Hello John,',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                  ),
                  Text(
                    'Some Text Here,',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 35),
                  ),
                  Text(
                    'Some More Text Here,',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 19,
                        color: Color(0xff7EBCC3)),
                  ),
                  SizedBox(height: 10),
                ]),
          ),
          Positioned(
            right: -60,
            top: 140,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: <Widget>[
                Image(
                  image: AssetImage('assets/hero.png'),
                  width: 280,
                  height: 230,
                )
              ],
            ),
          ),

          Positioned(
              left: 0,
              right: 0,
              bottom: 0,
              child: Container(
                decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(25),
                        topRight: Radius.circular(25)),
                    boxShadow: [
                      BoxShadow(
                        color: Color.fromARGB(255, 255, 184, 179),
                        blurRadius: 15.0,
                        spreadRadius: 0.5,
                        offset: Offset(1, 1),
                      )
                    ]),
                padding: EdgeInsets.symmetric(horizontal: 20, vertical: 30),
                child: Column(
                  children: <Widget>[
                    GestureDetector(
                      onTap: () => Navigator.pushNamed(context, Search.id),
                      child: Container(
                        width: double.infinity,
                        padding: EdgeInsets.only(left: 16, right: 8),
                        decoration: BoxDecoration(
                            color: Color(0xffEC5B5B),
                            borderRadius:
                                BorderRadius.all(Radius.circular(100))),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Image.asset(
                              'assets/search4.png',
                              height: 55,
                              width: 70,
                              fit: BoxFit.fitHeight,
                            ),
                            Container(
                                child: Text(
                              'Search Breeds',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 20,
                                color: Colors.white,
                              ),
                            )),
                            Container(
                              padding: EdgeInsets.all(10),
                              decoration: BoxDecoration(
                                  color: Color(0xff7EBCC3),
                                  borderRadius: BorderRadius.circular(20)),
                              child: Icon(
                                Icons.search,
                                color: Colors.white,
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Container(
                      width: double.infinity,
                      padding: EdgeInsets.only(top: 8, right: 17),
                      decoration: BoxDecoration(
                          color: Color(0xff7EBCC3),
                          borderRadius: BorderRadius.all(Radius.circular(20))),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Container(
                            padding: EdgeInsets.all(10),
                            decoration: BoxDecoration(
                                color: Color(0xff7EBCC3),
                                borderRadius: BorderRadius.circular(20)),
                            child: SizedBox(
                              width: 50,
                            ),
                          ),
                          Container(
                              child: Text(
                            'Show All',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 20,
                              color: Colors.white,
                            ),
                          )),
                          Image.asset(
                            'assets/view_all2.png',
                            height: 58,
                            width: 70,
                            fit: BoxFit.fitWidth,
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: <Widget>[
                        Container(
                          width: widgth * .430,
                          padding: EdgeInsets.only(right: 10),
                          decoration: BoxDecoration(
                              color: Color(0xFFF5C975),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(15))),
                          child: Row(
                            children: <Widget>[
                              Image.asset(
                                'assets/facts1.png',
                                height: 100,
                                width: 105,
                                fit: BoxFit.fitHeight,
                              ),
                              Container(
                                  child: Text(
                                'Facts',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20,
                                  color: Colors.brown,
                                ),
                              )),
                            ],
                          ),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        GestureDetector(
                          onTap: () => Navigator.pushNamed(context, catInfo.id),
                          child: Container(
                            width: widgth * .430,
                            padding: EdgeInsets.fromLTRB(0, 0, 10, 0),
                            decoration: BoxDecoration(
                                color: Color(0xFFF5C975),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(15))),
                            child: Row(
                              children: <Widget>[
                               Image.asset(
                                  'assets/care2.png',
                                  height: 100,
                                  width: 80,
                                  fit: BoxFit.fitWidth,
                                ),
                                Container(
                                    child: Text(
                                  'Cat Info',
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 18,
                                    color: Colors.brown,
                                  ),
                                )),
                              ],
                            ),
                          ),
                        )
                      ],
                    ),
                  ],
                ),
              ))

          /// A container with a box decoration, padding, and a column with a container inside.
        ],
      )),
    );
  }
}
