// ignore_for_file: camel_case_types, prefer_const_constructors_in_immutables, prefer_const_constructors, avoid_unnecessary_containers, prefer_const_literals_to_create_immutables, sort_child_properties_last, non_constant_identifier_names, unnecessary_string_interpolations

import 'package:catpedia/screens/care_memes.dart';
import 'package:flutter/material.dart';

import 'care_geninfo.dart';
import 'care_food.dart';
import 'care_grooming.dart';
import 'care_grooming.dart';
import 'maintenance.dart';

class CareInfo extends StatelessWidget {
  static String id = 'care_info';

  CareInfo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double width_ = MediaQuery.of(context).size.width;

    return Scaffold(
        body: SafeArea(
            child: Container(
      padding: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
      child: SingleChildScrollView(
        child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(18),
                    color: Colors.yellow),
                padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                child: Column(children: [
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
                  ]),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    children: [
                      Image(
                        image: AssetImage('assets/care_info.png'),
                        width: 250,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Care',
                            style: TextStyle(
                                fontSize: 55,
                                fontWeight: FontWeight.bold,
                                color: Colors.brown),
                          ),
                          Text(
                            'Information',
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.normal),
                          ),
                        ],
                      ),
                    ],
                  ),
                ]),
              ),
              SizedBox(height: 30),
              car_ds(context, .900, .230, 40, 'assets/catgeneral.jpg',
                  "General", GenInfo.id),
              SizedBox(
                height: 10,
              ),
              SingleChildScrollView(
                child: Column(
                  children: [
                    Row(children: [
                      //if navigating, add the function call at the end of the parameters, e.g food()

                      car_ds(context, .450, .200, 30, 'assets/cateat.jpg',
                          "Foods", Food.id),
                      SizedBox(
                        height: 10,
                      ),
                      car_ds(context, .450, .200, 30, 'assets/catgroom.jpg',
                          "Grooming", Groom.id),
                    ]),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: [
                        car_ds(
                            context,
                            .450,
                            .200,
                            30,
                            'assets/catbehavior.jpg',
                            "Behavior",
                            Maintenance.id),
                        SizedBox(
                          height: 10,
                        ),
                        car_ds(context, .450, .200, 30, 'assets/catmeme.jpg',
                            "Memes", Memes.id),
                      ],
                    ),
                  ],
                ),
              )
            ]),
      ),
    )));
  }

  Widget car_ds(BuildContext context, double width1, double height1,
      double font, String pict, String text, String route) {
    //if navigating, add Widget nav at the end of the parameters

    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    return Card(
      clipBehavior: Clip.antiAlias,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(18),
      ),
      child: Stack(
        alignment: Alignment.center,
        children: [
          Ink.image(
            image: AssetImage('$pict'),
            child: InkWell(
              highlightColor: Colors.yellow,
              onTap: () => Navigator.pushNamed(context, route),
              child: Center(
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                    Text(
                      "$text",
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 35),
                    ),
                  ])),
            ),
            width: width * width1,
            height: height * height1,
            fit: BoxFit.cover,
          ),
        ],
      ),
    );
  }
}
