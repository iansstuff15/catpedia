import 'package:catpedia/screens/breed.dart';
import 'package:catpedia/screens/home.dart';
import 'package:catpedia/screens/maintenance.dart';
import 'package:catpedia/screens/search.dart';
import 'package:catpedia/screens/question.dart';
import 'package:catpedia/screens/cat_info.dart';
import 'package:catpedia/screens/breedlist.dart';
import 'package:catpedia/screens/care_geninfo.dart';
import 'package:catpedia/screens/care_food.dart';
import 'package:catpedia/screens/care_grooming.dart';
import 'package:catpedia/screens/care_memes.dart';
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
        CareInfo.id: (context) => CareInfo(),
        GenInfo.id: (context) => GenInfo(),
        Food.id: (context) => Food(),
        Groom.id: (context) => Groom(),
        Memes.id: (context) => Memes(),
        Question.id: (context) => Question(),
        Breedlist.id: (context) => Breedlist(),
        Maintenance.id: (context) => Maintenance(),
        BreedScreen.id:(context) => BreedScreen(),

      },
    );
  }
}
