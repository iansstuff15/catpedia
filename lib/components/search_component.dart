// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:skeletons/skeletons.dart';

class ListComponent extends StatelessWidget {
  final Map<String, dynamic> item;
  final String name;
  ListComponent(this.item,this.name);

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
                  'Title',
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
                        'https://cdn.britannica.com/73/3473-004-6E573BFA/Flag-Philippines.jpg'),
                    width: 20,
                  ),
                ),
              ],
            ),
            Column(
              children: [
                Text(
                  'Reprehenderit quis mollit in veniam pariatur aliquip.',
                  style: TextStyle(overflow: TextOverflow.clip),
                )
              ],
            )
          ],
        ),
      ],
    ));
  }
}
