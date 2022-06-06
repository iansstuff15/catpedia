// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class SearchComponent extends StatefulWidget {


  @override
  State<SearchComponent> createState() => _SearchComponentState();
}

class _SearchComponentState extends State<SearchComponent> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Row(
        children: [
          // Image(image: NetworkImage('https://res.cloudinary.com/practicaldev/image/fetch/s--fgOKthwm--/c_imagga_scale,f_auto,fl_progressive,h_420,q_auto,w_1000/https://thepracticaldev.s3.amazonaws.com/i/k2hqrpxwaz68a2nfrvj9.jpeg'), width: 100,height: 100,),
          Column(
            children: [
              Row(
                children: [
                  Text('Name'),
                  // Image(image: NetworkImage('https://cdn.britannica.com/73/3473-004-6E573BFA/Flag-Philippines.jpg'), width: 100,height: 100,)
                ],

              ),
              Text('Ex esse ad incididunt tempor sint sunt do qui ipsum culpa ut minim magna. Excepteur duis sunt excepteur qui mollit eiusmod. Incididunt qui mollit cupidatat duis. Eu eiusmod pariatur ut esse aute aliquip est quis sit aute enim enim ipsum.')

            ],
          )
        ],
      ),

    );
  }
}