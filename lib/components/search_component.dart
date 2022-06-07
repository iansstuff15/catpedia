// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:skeletons/skeletons.dart';

class ListComponent extends StatelessWidget {
  final Map<String, dynamic> item;
  final String name;
  final String description;
  final String countryCode;
  ListComponent(this.item, this.name, this.description,this.countryCode);

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
            width: 110,
          ),
        ),
        SizedBox(
          width: 5,
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              width: 200,
              child: Row(
                children: [
                  Text(
                    name,
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.pink,
                        fontSize: 16),
                  ),
                  SizedBox(
                    width: 3,
                  ),
                  ClipRRect(
                    borderRadius: BorderRadius.circular(3.0),
                    child: Image(
                      image: NetworkImage(
                        countryCode == "SP" ?  
                        'https://countryflagsapi.com/png/sp' :
                        'https://countryflagsapi.com/png/$countryCode'),
                      width: 20,
                    ),
                  ),
                ],
              ),
            ),
            Column(
              children: [
                SizedBox(
                    width: 200,
                    height: 50,
                    child: Text(
                      description,
                      style: TextStyle(
                        overflow: TextOverflow.clip,
                      ),
                    ))
              ],
            )
          ],
        ),
      ],
    ));
  }
}
