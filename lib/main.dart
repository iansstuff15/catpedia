import 'package:catpedia/screens/home.dart';
import 'package:catpedia/screens/search.dart';
import 'package:catpedia/screens/cat_info.dart';

import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Catpedia',
      initialRoute: Home.id,
      routes: {
        Home.id: (context) => Home(),
        Search.id: (context) => Search(),
        catInfo.id: (context) => catInfo(),
      },
    );
  }
}
