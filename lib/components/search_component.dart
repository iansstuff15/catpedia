// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:skeletons/skeletons.dart';

class ListComponent extends StatelessWidget {
  final Map<String, dynamic> item;
  final String name;
  final String country_code;
  final String desc;
  
  ListComponent(this.item,this.name,this.country_code,this.desc);

  @override
  Widget build(BuildContext context) {
    log(name.toString());
    return SingleChildScrollView(
        child: Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(8.0),
          child: Image(
            image: NetworkImage(
                'https://blog.xojo.com/wp-content/uploads/2015/10/Cat1.pngt1466486449161'),
            width: 120,
          ),
        ),
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
            Column(
              children: [
                SizedBox(
                  height: 50,
                  width: 220,
                  child: Text(
                    desc,
                    textAlign: TextAlign.justify,
                    style: TextStyle(
                      overflow: TextOverflow.clip),
                  ),
                )
              ],
            )
          ],
        ),
      ],
    ));
  }
}
